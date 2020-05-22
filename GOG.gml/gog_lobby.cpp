// gog_lobby.cpp
// Anything related to matchmaking lobbies, except searching for them.
#include "gog_shared.h"

///
enum gog_lobby_type_t {
	gog_lobby_type_private = 0,
	gog_lobby_type_friends_only,
	gog_lobby_type_public,
	gog_lobby_type_invisible_to_friends,
};
LobbyType gog_lobby_type_map(gog_lobby_type_t t) {
	switch (t) {
		case gog_lobby_type_private:
			return LobbyType::LOBBY_TYPE_PRIVATE;
		case gog_lobby_type_public:
			return LobbyType::LOBBY_TYPE_PUBLIC;
		case gog_lobby_type_friends_only:
			return LobbyType::LOBBY_TYPE_FRIENDS_ONLY;
		case gog_lobby_type_invisible_to_friends:
			return LobbyType::LOBBY_TYPE_INVISIBLE_TO_FRIENDS;
		default:
			return LobbyType::LOBBY_TYPE_PUBLIC;
	}
}
///
enum class gog_lobby_topology_type {
	fcm = 1,
	star = 2,
	connectionless = 3,
	fcm_ownership_transition = 4,
};
LobbyTopologyType gog_lobby_topology_type_map(gog_lobby_topology_type t) {
	switch (t) {
		case gog_lobby_topology_type::fcm:
			return LobbyTopologyType::LOBBY_TOPOLOGY_TYPE_FCM;
		case gog_lobby_topology_type::star:
			return LobbyTopologyType::LOBBY_TOPOLOGY_TYPE_STAR;
		case gog_lobby_topology_type::connectionless:
			return LobbyTopologyType::LOBBY_TOPOLOGY_TYPE_CONNECTIONLESS;
		case gog_lobby_topology_type::fcm_ownership_transition:
			return LobbyTopologyType::LOBBY_TOPOLOGY_TYPE_FCM_OWNERSHIP_TRANSITION;
		default:
			return LobbyTopologyType::LOBBY_TOPOLOGY_TYPE_STAR;
	}
}

///
dllx double gog_lobby_create(double lobby_type, double max_members, double joinable, double topology_type) {
	auto lt = gog_lobby_type_map(gml::f2e<gog_lobby_type_t>(lobby_type));
	auto ltt = gog_lobby_topology_type_map(gml::f2e<gog_lobby_topology_type>(lobby_type));
	Matchmaking()->CreateLobby(lt, gml::f2u(max_members), gml::f2z(joinable), ltt);
	return true;
}

///
dllx double gog_lobby_join(const char* lobby_id) {
	Matchmaking()->JoinLobby(gml::s2g(lobby_id));
	return true;
}

///
dllx double gog_lobby_leave(const char* lobby_id) {
	Matchmaking()->LeaveLobby(gml::s2g(lobby_id));
	return true;
}

///
dllx double gog_lobby_is_joinable(const char* lobby_id) {
	return Matchmaking()->IsLobbyJoinable(gml::s2g(lobby_id));
}

///
dllx double gog_lobby_set_joinable(const char* lobby_id, double joinable) {
	Matchmaking()->SetLobbyJoinable(gml::s2g(lobby_id), gml::f2z(joinable));
	return true;
}

///
dllx double gog_lobby_get_type(const char* lobby_id) {
	return Matchmaking()->GetLobbyType(gml::s2g(lobby_id));
}

///
dllx double gog_lobby_set_type(const char* lobby_id, double lobby_type) {
	auto lt = gog_lobby_type_map(gml::f2e<gog_lobby_type_t>(lobby_type));
	Matchmaking()->SetLobbyType(gml::s2g(lobby_id), lt);
	return true;
}

dllx double gog_lobby_set_data_raw(const char* lobby_id, const char* key, const char* value) {
	Matchmaking()->SetLobbyData(gml::s2g(lobby_id), key, value);
	return true;
}

///
dllx double gog_lobby_request_data(const char* lobby_id) {
	Matchmaking()->RequestLobbyData(gml::s2g(lobby_id));
	return true;
}

#pragma region lobby data
///
dllx double gog_lobby_delete_data(const char* lobby_id, const char* key) {
	Matchmaking()->DeleteLobbyData(gml::s2g(lobby_id), key);
	return true;
}

///
dllx const char* gog_lobby_get_data(const char* lobby_id, const char* key) {
	return Matchmaking()->GetLobbyData(gml::s2g(lobby_id), key);
}

///
dllx double gog_lobby_get_data_count(const char* lobby_id) {
	return Matchmaking()->GetLobbyDataCount(gml::s2g(lobby_id));
}
#pragma endregion

#pragma region member data
///
dllx const char* gog_lobby_get_member_data(const char* lobby_id, const char* member_id, const char* key) {
	return Matchmaking()->GetLobbyMemberData(gml::s2g(lobby_id), gml::s2g(member_id), key);
}

///
dllx double gog_lobby_get_member_data_count(const char* lobby_id, const char* member_id) {
	return Matchmaking()->GetLobbyMemberDataCount(gml::s2g(lobby_id), gml::s2g(member_id));
}

///
dllx double gog_lobby_delete_member_data(const char* lobby_id, const char* member_id, const char* key) {
	Matchmaking()->DeleteLobbyMemberData(gml::s2g(lobby_id)/*, gml::s2g(member_id)*/, key);
	return true;
}
#pragma endregion

///
dllx const char* gog_lobby_get_owner(const char* lobby_id) {
	return gml::g2s(Matchmaking()->GetLobbyOwner(gml::s2g(lobby_id)));
}

///
dllx double gog_lobby_get_member_count(const char* lobby_id) {
	return Matchmaking()->GetNumLobbyMembers(gml::s2g(lobby_id));
}

///
dllx const char* gog_lobby_get_member_at(const char* lobby_id, double index) {
	return gml::g2s(Matchmaking()->GetLobbyMemberByIndex(gml::s2g(lobby_id), gml::f2u(index)));
}


dllx double gog_lobby_send_message_raw(const char* lobby_id, const void* data, double size) {
	return Matchmaking()->SendLobbyMessage(gml::s2g(lobby_id), data, gml::f2u(size));
}

///
dllx double gog_lobby_send_message_string(const char* lobby_id, const char* data_string) {
	return Matchmaking()->SendLobbyMessage(gml::s2g(lobby_id), data_string, strlen(data_string));
}

///
dllx double gog_lobby_get_max_member_count(const char* lobby_id) {
	return Matchmaking()->GetMaxNumLobbyMembers(gml::s2g(lobby_id));
}

///
dllx double gog_lobby_set_max_member_count(const char* lobby_id, double size) {
	Matchmaking()->SetMaxNumLobbyMembers(gml::s2g(lobby_id), gml::f2u(size));
	return true;
}

struct gog_lobby_get_message_args { uint32_t messageID, messageSize; };
dllx double gog_lobby_get_message_raw(const char* lobby_id, const char* sender_id, gog_lobby_get_message_args* args, char* buf) {
	return Matchmaking()->GetLobbyMessage(gml::s2g(lobby_id), args->messageID, gml::s2g(sender_id), buf, args->messageSize);
}

///
dllx const char* gog_lobby_get_message_string(const char* lobby_id, double message_id, const char* sender_id, double message_size) {
	static char* buf = nullptr;
	static size_t bufSize = 0;
	auto n = gml::f2u(message_size);
	if (bufSize <= n) {
		auto b = (char*)realloc(buf, n + 1);
		if (b == nullptr) {
			trace("Failed to realloc %zu bytes in gog_lobby_get_message_string.", n + 1);
			return "";
		}
		buf = b;
		bufSize = n + 1;
	}
	auto found = Matchmaking()->GetLobbyMessage(gml::s2g(lobby_id), gml::f2u(message_id), gml::s2g(sender_id), buf, n);
	buf[found] = '\0';
	return buf;
}