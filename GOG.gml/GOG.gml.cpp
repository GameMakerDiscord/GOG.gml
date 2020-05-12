/** @author YellowAfterlife */

#define _CRT_SECURE_NO_WARNINGS
#ifdef _WIN32
#include "stdafx.h"
#endif
#include <vector>
#include <memory>
#include <sstream>
#include <iomanip>
#include "./../GOG/Include/galaxy/GalaxyApi.h"

#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default")))
#else
#define dllx extern "C"
#endif

using namespace galaxy::api;
#define GalaxyOK (galaxy::api::GetError() == NULL)
#define GalaxyError galaxy::api::GetError

#pragma region Helpers
#define trace(...) { printf("[Galaxy] "); printf(__VA_ARGS__); printf("\n"); fflush(stdout); }
// Copies a const char to a temporary buffer for returning to GM (which makes a copy of it)
char* ccr(const char* str) {
	static char* buf = (char*)malloc(1);
	static size_t bufSize = 1;
	size_t strSize = strlen(str);
	if (bufSize < strSize) {
		buf = (char*)realloc(buf, strSize);
		bufSize = strSize;
	}
	strcpy(buf, str);
	return buf;
}
uint32_t uclamp(double val) {
	if (val <= 0) {
		return 0;
	} else if (val >= UINT32_MAX) {
		return UINT32_MAX;
	} else return (uint32_t)val;
}
#pragma endregion

#pragma region GML callbacks
// As per http://help.yoyogames.com/hc/en-us/articles/216755258:
typedef int gml_ds_map;
void(*gml_event_perform_async)(gml_ds_map map, int event_type) = nullptr;
int(*gml_ds_map_create_ext)(int n, ...) = nullptr;
bool(*gml_ds_map_set_double)(gml_ds_map map, char* key, double value) = nullptr;
bool(*gml_ds_map_set_string)(gml_ds_map map, char* key, char* value) = nullptr;
dllx double RegisterCallbacks(char* arg1, char* arg2, char* arg3, char* arg4) {
	gml_event_perform_async = (void(*)(gml_ds_map, int))arg1;
	gml_ds_map_create_ext = (int(*)(int, ...))arg2;
	gml_ds_map_set_double = (bool(*)(gml_ds_map, char*, double))arg3;
	gml_ds_map_set_string = (bool(*)(gml_ds_map, char*, char*))arg4;
	return 0;
}
gml_ds_map gml_ds_map_create() {
	return gml_ds_map_create_ext(0);
}
#pragma endregion

// A wrapper for queuing async events for GML easier.
class gog_event {
	private:
	gml_ds_map map;
	public:
	gog_event() {
		map = gml_ds_map_create();
	}
	gog_event(char* type) {
		map = gml_ds_map_create();
		gml_ds_map_set_string(map, "event_type", type);
	}
	~gog_event() {
		//
	}
	/// Dispatches this event and cleans up the map.
	void dispatch() {
		gml_event_perform_async(map, 69);
	}
	bool set(char* key, double value) {
		return gml_ds_map_set_double(map, key, value);
	}
	bool set(char* key, char* value) {
		return gml_ds_map_set_string(map, key, value);
	}
	bool set(char* key, const char* value) {
		return gml_ds_map_set_string(map, key, ccr(value));
	}
	void set_success(bool success = true) {
		set("success", success);
		set("result", success ? 1 : 0);
	}
	void set_failure(int32_t reason) {
		set("success", 0.);
		set("result", 0.);
		set("reason", reason);
	}
};

#pragma region Errors
/// Returns last error's name, "" if no error
dllx char* gog_get_error() {
	auto e = galaxy::api::GetError();
	return ccr(e != NULL ? e->GetName() : "");
}
/// Returns last error's message, "" if no error
dllx char* gog_get_error_text() {
	auto e = galaxy::api::GetError();
	return ccr(e != NULL ? e->GetMsg() : "");
}
#pragma endregion

#pragma region Stats
bool gog_stats_ready_v = false;
///
dllx double gog_stats_ready() {
	return gog_stats_ready_v;
}

bool gog_stats_auto_submit_v = true;
dllx double gog_stats_auto_submit(double auto_submit) {
	gog_stats_auto_submit_v = auto_submit > 0.5;
	return true;
}
///
dllx double gog_stats_submit() {
	Stats()->StoreStatsAndAchievements();
	return GalaxyOK;
}
bool gog_stats_post() {
	if (gog_stats_auto_submit_v) {
		Stats()->StoreStatsAndAchievements();
		return GalaxyOK;
	} else return true;
}
///
dllx double gog_stats_request() {
	gog_stats_ready_v = false;
	Stats()->RequestUserStatsAndAchievements();
	return GalaxyOK;
}
///
dllx double gog_reset_all_stats_achievements() {
	Stats()->ResetStatsAndAchievements();
	gog_stats_post();
	return GalaxyOK;
}
///
dllx double gog_get_stat_int(char* stat_name) {
	return Stats()->GetStatInt(stat_name);
}
///
dllx double gog_get_stat_float(char* stat_name) {
	return Stats()->GetStatFloat(stat_name);
}
///
dllx double gog_set_stat_int(char* stat_name, double value) {
	Stats()->SetStatInt(stat_name, (int32_t)value);
	return GalaxyOK && gog_stats_post();
}
///
dllx double gog_set_stat_float(char* stat_name, double value) {
	Stats()->SetStatFloat(stat_name, (float)value);
	return GalaxyOK && gog_stats_post();
}
#pragma endregion

#pragma region Achievements
/// Returns achievement status (true/false), -1 on error
dllx double gog_get_achievement(char* name) {
	bool unlocked = false; uint32_t unlock_time = 0;
	Stats()->GetAchievement(name, unlocked, unlock_time);
	return GalaxyOK ? unlocked : -1;
}
/// Returns time of obtaining achievement, -1 on error
dllx double gog_get_achievement_time(char* name) {
	bool unlocked = false; uint32_t unlock_time = 0;
	Stats()->GetAchievement(name, unlocked, unlock_time);
	return GalaxyOK ? unlock_time : -1;
}
/// Acquires an achievement, returns whether successfully.
dllx double gog_set_achievement(char* name) {
	Stats()->SetAchievement(name);
	return GalaxyOK && gog_stats_post();
}
#pragma endregion

#pragma region Leaderboards
///
dllx double gog_create_leaderboard(char* name, char* display_name, double lb_sort, double lb_disp) {
	LeaderboardSortMethod smt;
	switch ((int)lb_sort) {
		case 1: smt = LeaderboardSortMethod::LEADERBOARD_SORT_METHOD_ASCENDING; break;
		case 2: smt = LeaderboardSortMethod::LEADERBOARD_SORT_METHOD_DESCENDING; break;
		default: smt = LeaderboardSortMethod::LEADERBOARD_SORT_METHOD_NONE; break;
	}
	LeaderboardDisplayType dst;
	switch ((int)lb_disp) {
		case 1: dst = LeaderboardDisplayType::LEADERBOARD_DISPLAY_TYPE_NUMBER; break;
		case 2: dst = LeaderboardDisplayType::LEADERBOARD_DISPLAY_TYPE_TIME_SECONDS; break;
		case 3: dst = LeaderboardDisplayType::LEADERBOARD_DISPLAY_TYPE_TIME_MILLISECONDS; break;
		default: dst = LeaderboardDisplayType::LEADERBOARD_DISPLAY_TYPE_NONE; break;
	}
	Stats()->FindOrCreateLeaderboard(name, display_name, smt, dst);
	return GalaxyOK;
}
///
dllx char* gog_get_leaderboard_display_name(char* name) {
	return ccr(Stats()->GetLeaderboardDisplayName(name));
}
///
dllx double gog_upload_score(char* lb_name, double score_int32, double force_update) {
	Stats()->SetLeaderboardScore(lb_name, (int32_t)score_int32, force_update > 0.5);
	return GalaxyOK;
}
///
dllx double gog_download_scores(char* lb_name, double start_idx, double end_idx) {
	Stats()->RequestLeaderboardEntriesGlobal(lb_name, uclamp(start_idx - 1), uclamp(end_idx - 1));
	return GalaxyOK;
}
///
dllx double gog_download_scores_around_user(char* lb_name, double range_start, double range_end) {
	Stats()->RequestLeaderboardEntriesAroundUser(lb_name, uclamp(-range_start), uclamp(range_end));
	return GalaxyOK;
}
///
dllx double gog_download_friends_scores(char* lb_name) {
	uint32_t found = Friends()->GetFriendCount();
	GalaxyID* userArray = new GalaxyID[found + 1];
	userArray[found] = User()->GetGalaxyID();
	for (uint32_t i = 0; i < found; i++) {
		userArray[i] = Friends()->GetFriendByIndex(i);
	}
	Stats()->RequestLeaderboardEntriesForUsers(lb_name, userArray, found + 1);
	delete userArray;
	return GalaxyOK;
}
#pragma endregion

#pragma region DLC
dllx double gog_user_installed_dlc(char* product_id) {
	return Apps()->IsDlcInstalled(atoll(product_id));
}
#pragma endregion

#pragma region User
bool gog_is_user_logged_on_v = false;
#define gog_parse_id(sid) GalaxyID(atoll(sid))
///
dllx double gog_is_user_logged_on() {
	return gog_is_user_logged_on_v;
}
/// Unlike Steam, you get the actual name once loaded and "" on error.
dllx char* gog_get_user_persona_name(char* galaxy_id) {
	return ccr(Friends()->GetFriendPersonaName(gog_parse_id(galaxy_id)));
}
///
dllx char* gog_get_user_avatar_url(char* galaxy_id, double size) {
	AvatarType type;
	switch ((int32_t)size) {
		case 1: type = AvatarType::AVATAR_TYPE_MEDIUM; break;
		case 2: type = AvatarType::AVATAR_TYPE_LARGE; break;
		default: type = AvatarType::AVATAR_TYPE_SMALL; break;
	}
	return ccr(Friends()->GetFriendAvatarUrl(gog_parse_id(galaxy_id), type));
}
///
dllx double gog_request_user_info(char* galaxy_id) {
	Friends()->RequestUserInformation(gog_parse_id(galaxy_id));
	return GalaxyOK;
}
///
dllx char* gog_get_persona_name() {
	return ccr(Friends()->GetFriendPersonaName(User()->GetGalaxyID()));
}
///
dllx char* gog_get_user_galaxy_id() {
	static uint64_t curr = 0;
	static char buf[25] = "0";
	uint64_t next = User()->GetGalaxyID().ToUint64();
	if (curr != next) {
		curr = next;
		sprintf(buf, "%I64u", next);
	}
	return buf;
}
#pragma endregion

class GalaxyAsyncImpl: public
	GlobalAuthListener,
	GlobalUserStatsAndAchievementsRetrieveListener,
	GlobalLeaderboardRetrieveListener,
	GlobalLeaderboardScoreUpdateListener,
	GlobalLeaderboardEntriesRetrieveListener
{
	public:
	GalaxyAsyncImpl() {
		gog_is_user_logged_on_v = false;
		gog_stats_ready_v = false;
	}
	//
	virtual void OnAuthSuccess() {
		gog_is_user_logged_on_v = true;
		trace("Auth successful!");
		gog_stats_request();
		gog_event e("gog_user_auth");
		e.set_success();
		e.dispatch();
	}
	virtual void OnAuthFailure(IAuthListener::FailureReason reason) {
		trace("Auth failed: %d", reason);
		gog_event e("gog_user_auth");
		e.set_failure((int32_t)reason);
		e.dispatch();
	}
	virtual void OnAuthLost() {
		trace("Auth lost");
	}
	//
	virtual void OnUserStatsAndAchievementsRetrieveSuccess(GalaxyID userID) {
		trace("Got stats!");
		gog_stats_ready_v = true;
		gog_event e("gog_user_stats");
		e.set_success();
		e.dispatch();
	}
	virtual void OnUserStatsAndAchievementsRetrieveFailure(GalaxyID userID, IUserStatsAndAchievementsRetrieveListener::FailureReason reason) {
		trace("Failed to get stats: %d", reason);
		gog_event e("gog_user_stats");
		e.set_failure((int32_t)reason);
		e.dispatch();
	}
	//
	virtual void OnLeaderboardRetrieveSuccess(const char* name) {
		trace("Retrieved leaderboard `%s`", name);
		gog_event e("gog_leaderboard_retrieve");
		e.set("lb_name", ccr(name));
		e.set_success();
		e.dispatch();
	}
	virtual void OnLeaderboardRetrieveFailure(const char* name, ILeaderboardRetrieveListener::FailureReason reason) {
		trace("Failed to retrieve leaderboard `%s`", name);
		gog_event e("gog_leaderboard_retrieve");
		e.set("lb_name", ccr(name));
		e.set_failure((int32_t)reason);
		e.dispatch();
	}
	//
	virtual void OnLeaderboardScoreUpdateSuccess(const char* name, int32_t score, uint32_t old_rank, uint32_t new_rank) {
		trace("Updated score (%d) in `%s`, rank %d -> %d", score, name, old_rank, new_rank);
		gog_event e("gog_leaderboard_upload");
		e.set("lb_name", name);
		e.set("old_rank", old_rank);
		e.set("new_rank", new_rank);
		e.set("score", score);
		e.set_success();
		e.dispatch();
	}
	virtual void OnLeaderboardScoreUpdateFailure(const char* name, int32_t score, ILeaderboardScoreUpdateListener::FailureReason reason) {
		trace("Failed to update score (%d) in `%s`, reason %d", score, name, reason);
		gog_event e("gog_leaderboard_upload");
		e.set("lb_name", name);
		e.set("score", score);
		e.set_failure((int32_t)reason);
		e.dispatch();
	}
	//
	virtual void OnLeaderboardEntriesRetrieveSuccess(const char* name, uint32_t count) {
		trace("Got %d scores for `%s`", count, name);
		gog_event e("gog_leaderboard_download");
		e.set("lb_name", name);
		e.set("status", 0.);
		e.set_success(true);
		e.set("numEntries", count);
		std::ostringstream out;
		out << "{ \"entries\": [";
		for (uint32_t i = 0; i < count; i++) {
			if (i > 0) out << ", ";
			uint32_t rank; int32_t score; GalaxyID user;
			Stats()->GetRequestedLeaderboardEntry(i, rank, score, user);
			out << "\n  { \"user\": \"" << user.ToUint64() << "\"";
			out << ", \"name\": \"";
			const char* name = Friends()->GetFriendPersonaName(user);
			char c;
			for (size_t i = 0; (c = name[i]) != 0; i++) {
				switch (c) {
					case '"': out << "\\\""; break;
					case '\\': out << "\\\\"; break;
					case '\b': out << "\\b"; break;
					case '\f': out << "\\f"; break;
					case '\n': out << "\\n"; break;
					case '\r': out << "\\r"; break;
					case '\t': out << "\\t"; break;
					default:
						if ('\x00' <= c && c <= '\x1f') {
							out << "\\u" << std::hex << std::setw(4) << std::setfill('0') << (int)c;
						} else out << c;
				}
			}
			out << "\"";
			out << ", \"score\": " << score;
			out << ", \"rank\": " << rank;
			out << " }";
		}
		if (count != 0) out << "\n";
		out << "] }";
		e.set("entries", out.str().c_str());
		e.dispatch();
	}
	virtual void OnLeaderboardEntriesRetrieveFailure(const char* name, ILeaderboardEntriesRetrieveListener::FailureReason reason) {
		trace("Failed to get scores for `%s`, reason %d", name, reason);
		gog_event e("gog_leaderboard_download");
		e.set("lb_name", name);
		e.set("status", -1);
		e.set_failure((int32_t)reason);
		e.set("numEntries", 0.);
		e.dispatch();
	}
	//
} *GalaxyAsync;
///
dllx double gog_update() {
	galaxy::api::ProcessData();
	return GalaxyOK;
}
///
dllx double gog_init(char* client_id, char* client_secret) {
	InitOptions options(client_id, client_secret);
	galaxy::api::Init(options);
	GalaxyAsync = new GalaxyAsyncImpl();
	User()->SignInGalaxy();
	if (GalaxyOK) trace("Init OK!");
	return GalaxyOK;
}
dllx double gog_cleanup() {
	if (GalaxyAsync != NULL) {
		delete GalaxyAsync;
		GalaxyAsync = NULL;
	}
	galaxy::api::Shutdown();
	return true;
}