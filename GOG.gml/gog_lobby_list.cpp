// gog_lobby_list.cpp
// Anything related to searching lobbies.
#include "gog_shared.h"

///
dllx double gog_lobby_list_add_near_filter(const char* key, double value) {
	Matchmaking()->AddRequestLobbyListNearValueFilter(key, gml::f2i(value));
	return true;
}

/// gml
enum class gog_lobby_list_cmp_type { eq = 0, ne = 3, lt = -1, gt = 1, le = -2, ge = 2 };

LobbyComparisonType gog_lobby_list_cmp_type_map(gog_lobby_list_cmp_type cmp) {
	switch (cmp) {
		case gog_lobby_list_cmp_type::eq:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_EQUAL;
		case gog_lobby_list_cmp_type::ne:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_NOT_EQUAL;
		case gog_lobby_list_cmp_type::gt:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_GREATER;
		case gog_lobby_list_cmp_type::ge:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_GREATER_OR_EQUAL;
		case gog_lobby_list_cmp_type::lt:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_LOWER;
		case gog_lobby_list_cmp_type::le:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_LOWER_OR_EQUAL;
		default:
			return LobbyComparisonType::LOBBY_COMPARISON_TYPE_EQUAL;
	}
}

///
dllx double gog_lobby_list_add_numeric_filter(const char* key, double value, double cmp_type) {
	auto ct = gog_lobby_list_cmp_type_map(gml::f2e<gog_lobby_list_cmp_type>(cmp_type));
	Matchmaking()->AddRequestLobbyListNumericalFilter(key, gml::f2i(value), ct);
	return true;
}

///
dllx double gog_lobby_list_add_string_filter(const char* key, const char* value, double cmp_type) {
	auto ct = gog_lobby_list_cmp_type_map(gml::f2e<gog_lobby_list_cmp_type>(cmp_type));
	Matchmaking()->AddRequestLobbyListStringFilter(key, value, ct);
	return true;
}

///
dllx double gog_lobby_list_add_result_count_filter(const char* key, double max_results) {
	Matchmaking()->AddRequestLobbyListResultCountFilter(gml::f2u(max_results));
	return true;
}


///
dllx double gog_lobby_list_request() {
	Matchmaking()->RequestLobbyList();
	return true;
}

std::vector<GalaxyID> gog_lobby_list_lobbies{};
///
dllx const char* gog_lobby_list_get_lobby_at(double index) {
	auto ind = gml::f2u(index);
	if (ind >= gog_lobby_list_lobbies.size()) return "0";
	return gml::g2s(gog_lobby_list_lobbies[ind]);
}