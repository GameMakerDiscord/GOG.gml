// gog_stats.cpp
#include "gog_shared.h"


#pragma region Stats
bool gog_stats_ready_v = false;
///
dllx double gog_stats_ready() {
	return gog_stats_ready_v;
}

bool gog_stats_auto_submit_v = true;
dllx double gog_stats_auto_submit(double auto_submit) {
	gog_stats_auto_submit_v = gml::f2z(auto_submit);
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
	Stats()->SetLeaderboardScore(lb_name, (int32_t)score_int32, gml::f2z(force_update));
	return GalaxyOK;
}
///
dllx double gog_download_scores(char* lb_name, double start_idx, double end_idx) {
	Stats()->RequestLeaderboardEntriesGlobal(lb_name, gml::f2u(start_idx - 1), gml::f2u(end_idx - 1));
	return GalaxyOK;
}
///
dllx double gog_download_scores_around_user(char* lb_name, double range_start, double range_end) {
	Stats()->RequestLeaderboardEntriesAroundUser(lb_name, gml::f2u(-range_start), gml::f2u(range_end));
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