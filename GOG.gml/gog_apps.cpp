// gog_apps.cpp
// There isn't much here
#include "gog_shared.h"

///
dllx double gog_user_installed_dlc(char* product_id) {
	return Apps()->IsDlcInstalled(atoll(product_id));
}

///
dllx const char* gog_get_app_language(char* product_id) {
	return Apps()->GetCurrentGameLanguage(atoll(product_id));
}