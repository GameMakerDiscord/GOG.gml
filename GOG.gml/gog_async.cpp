// gog_async.cpp
// Perhaps splitting async listeners into smaller classes would be a good idea for later.
// Sometimes I'll declare enums right inside listener methods so that GmxGen can pick them up
// and generate GML-side macros to match GOG enums.
#include "gog_shared.h"

dllx double gog_stats_request();
extern std::vector<GalaxyID> gog_lobby_list_lobbies;

class GalaxyAsyncImpl : public
	GlobalAuthListener,
	GlobalPersonaDataChangedListener,
	GlobalUserStatsAndAchievementsRetrieveListener,
	GlobalLeaderboardRetrieveListener,
	GlobalLeaderboardScoreUpdateListener,
	GlobalLeaderboardEntriesRetrieveListener,
	GlobalLobbyCreatedListener,
	GlobalLobbyEnteredListener,
	GlobalLobbyLeftListener,
	GlobalLobbyMemberStateListener,
	GlobalLobbyDataListener,
	GlobalLobbyDataRetrieveListener,
	GlobalLobbyMessageListener,
	GlobalLobbyListListener,
	GlobalNatTypeDetectionListener
{
public:
	GalaxyAsyncImpl() {
		gog_is_user_logged_on_v = false;
		gog_stats_ready_v = false;
	}
	#pragma region Auth
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
	#pragma endregion

	virtual void OnPersonaDataChanged(GalaxyID userID, uint32_t personaStateChange) {
		/// gml
		enum class gog_personate_state_change {
			none = 0x0000,
			name = 0x0001,
			avatar = 0x0002,
			avatar_image_small = 0x0004,
			avatar_image_medium = 0x0008,
			avatar_image_large = 0x0010,
			avatar_image_any = 0x001C,
		};
		gog_event e("gog_persona_state_change");
		e.set_id("user_id", userID);
		e.set("changes", personaStateChange);
		e.dispatch();
	}

	#pragma region Stats
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
	#pragma endregion
	#pragma region Leaderboard
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
	#pragma endregion

	#pragma region Lobbies
	virtual void OnLobbyCreated(const GalaxyID& lobbyID, LobbyCreateResult result) {
		/// gml
		enum class gog_lobby_create_result { success, error, connection_failure };
		gog_event e("gog_lobby_create");
		e.set("lobby_id", gml::l2s(lobbyID.ToUint64()));
		e.set("result", (int)result);
		e.set("success", result == LobbyCreateResult::LOBBY_CREATE_RESULT_SUCCESS);
		e.dispatch();
	}
	virtual void OnLobbyEntered(const GalaxyID& lobbyID, LobbyEnterResult result) {
		/// gml
		enum class gog_lobby_enter_result { success, lobby_does_not_exist, lobby_is_full, error, connection_failure };
		gog_event e("gog_lobby_enter");
		e.set_id("lobby_id", lobbyID);
		e.set("result", (int)result);
		e.set("success", result == LobbyEnterResult::LOBBY_ENTER_RESULT_SUCCESS);
		e.dispatch();
	}
	virtual void OnLobbyLeft(const GalaxyID& lobbyID, LobbyLeaveReason reason) {
		/// gml
		enum class gog_lobby_leave_reason { undefined, user_left, lobby_closed, connection_lost };
		gog_event e("gog_lobby_leave");
		e.set_id("lobby_id", lobbyID);
		e.set("reason", (int)reason);
		e.dispatch();
	}
	virtual void OnLobbyMemberStateChanged(const GalaxyID& lobbyID, const GalaxyID& memberID, LobbyMemberStateChange memberStateChange) {
		/// gml
		enum class gog_lobby_member_state_change : int {
			entered = 1, left = 2, disconnected = 4, kicked = 8, banned = 16
		};
		gog_event e("gog_lobby_member_state_change");
		e.set("lobby_id", gml::g2s(lobbyID));
		e.set("member_id", gml::g2s(memberID));
		e.set("state_change", (int)memberStateChange);
		e.dispatch();
	}
	virtual void OnLobbyDataUpdated(const GalaxyID& lobbyID, const GalaxyID& memberID) {
		gog_event e("gog_lobby_data_update");
		e.set_id("lobby_id", lobbyID);
		e.set_id("member_id", memberID);
		e.dispatch();
	}
	virtual void OnLobbyDataRetrieveSuccess(const GalaxyID& lobbyID) {
		gog_event e("gog_lobby_data_retrieve");
		e.set_id("lobby_id", lobbyID);
		e.set_success();
		e.dispatch();
	}
	virtual void OnLobbyDataRetrieveFailure(const GalaxyID& lobbyID, ILobbyDataRetrieveListener::FailureReason failureReason) {
		/// gml
		enum class gog_lobby_data_retrieve_failure_reason { undefined, lobby_does_not_exist, connection_failure };
		gog_event e("gog_lobby_data_retrieve");
		e.set_id("lobby_id", lobbyID);
		e.set_failure(failureReason);
		e.dispatch();
	}
	virtual void OnLobbyMessageReceived(const GalaxyID& lobbyID, const GalaxyID& senderID, uint32_t messageID, uint32_t messageLength) {
		gog_event e("gog_lobby_message");
		e.set_id("lobby_id", lobbyID);
		e.set_id("sender_id", senderID);
		e.set("message_id", messageID);
		e.set("message_size", messageLength);
		e.dispatch();
	}
	#pragma endregion

	virtual void OnLobbyList(uint32_t lobbyCount, LobbyListResult result) {
		// "This method can be used only inside of ILobbyListListener::OnLobbyList()."
		auto& lobbies = gog_lobby_list_lobbies;
		lobbies.clear();
		if (result == LobbyListResult::LOBBY_LIST_RESULT_SUCCESS) {
			for (auto i = 0u; i < lobbyCount; i++) {
				lobbies.push_back(Matchmaking()->GetLobbyByIndex(i));
			}
		}

		/// gml
		enum class gog_lobby_list_result { success, error, connection_failure};
		gog_event e("gog_lobby_list");
		e.set("lobby_count", lobbyCount);
		e.set("result", (int)result);
		e.set("success", result == LobbyEnterResult::LOBBY_ENTER_RESULT_SUCCESS);
		e.dispatch();
	}

	#pragma region NAT
	virtual void OnNatTypeDetectionSuccess(NatType natType) {
		gog_event e("gog_network_nat_type");
		e.set_success();
		e.set("nat_type", (int)natType);
		e.dispatch();
	}
	virtual void OnNatTypeDetectionFailure() {
		gog_event e("gog_network_nat_type");
		e.set_failure(0);
		e.dispatch();
	}
	#pragma endregion
} *GalaxyAsync = nullptr;

void gog_async_init() {
	if (GalaxyAsync != nullptr) return;
	GalaxyAsync = new GalaxyAsyncImpl();
}
void gog_async_cleanup() {
	if (GalaxyAsync != nullptr) {
		delete GalaxyAsync;
		GalaxyAsync = nullptr;
	}
}