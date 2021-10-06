// gog_user.cpp
#include "gog_shared.h"

bool gog_is_user_logged_on_v = false;

///
dllx double gog_is_user_logged_on() {
	return gog_is_user_logged_on_v;
}

/// Unlike Steam, you get the actual name once loaded and "" on error.
dllx char* gog_get_user_persona_name(char* galaxy_id) {
	auto api = Friends();
	if (!api) return "";
	return ccr(api->GetFriendPersonaName(gml::s2g(galaxy_id)));
}

///
dllx char* gog_get_user_avatar_url(char* galaxy_id, double size) {
	AvatarType type;
	switch ((int32_t)size) {
		case 1: type = AvatarType::AVATAR_TYPE_MEDIUM; break;
		case 2: type = AvatarType::AVATAR_TYPE_LARGE; break;
		default: type = AvatarType::AVATAR_TYPE_SMALL; break;
	}
	auto api = Friends();
	if (!api) return "";
	return ccr(api->GetFriendAvatarUrl(gml::s2g(galaxy_id), type));
}

///
dllx double gog_request_user_info(char* galaxy_id) {
	auto api = Friends();
	if (!api) return false;
	api->RequestUserInformation(gml::s2g(galaxy_id));
	return GalaxyOK;
}

///
dllx char* gog_get_persona_name() {
	auto api = Friends();
	if (!api) return "";
	return ccr(api->GetFriendPersonaName(User()->GetGalaxyID()));
}

///
dllx char* gog_get_user_galaxy_id() {
	static uint64_t curr = 0;
	static char buf[25] = "0";
	auto api = User();
	if (!api) return "0";
	uint64_t next = api->GetGalaxyID().ToUint64();
	if (curr != next) {
		curr = next;
		sprintf(buf, "%I64u", next);
	}
	return buf;
}

dllx double gog_user_sign_in_galaxy_raw(double require_online) {
	auto api = User();
	if (!api) return false;
	api->SignInGalaxy(gml::f2z(require_online));
	return true;
}
dllx double gog_user_sign_in_steam_raw(char* ticket, double ticket_size, char* name) {
	auto api = User();
	if (!api) return false;
	api->SignInSteam(ticket, gml::f2u(ticket_size), name);
	return true;
}