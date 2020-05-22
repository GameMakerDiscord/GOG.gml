// gog_main.cpp
// @author YellowAfterlife

#include "gog_shared.h"

#pragma region Errors
dllx char* gog_get_error_raw() {
	auto e = galaxy::api::GetError();
	return ccr(e != NULL ? e->GetName() : "");
}
dllx char* gog_get_error_text_raw() {
	auto e = galaxy::api::GetError();
	return ccr(e != NULL ? e->GetMsg() : "");
}
#pragma endregion

///
dllx double gog_update() {
	galaxy::api::ProcessData();
	return GalaxyOK;
}

void gog_async_init();
dllx double gog_init_raw(char* client_id, char* client_secret, double auto_sign_in) {
	InitOptions options(client_id, client_secret);
	galaxy::api::Init(options);
	gog_async_init();
	if (auto_sign_in > 0.5) User()->SignInGalaxy();
	if (GalaxyOK) trace("Init OK!");
	return GalaxyOK;
}

void gog_async_cleanup();
dllx double gog_cleanup() {
	gog_async_cleanup();
	galaxy::api::Shutdown();
	return true;
}