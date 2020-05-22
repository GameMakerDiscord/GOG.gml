// gog_shared.cpp
#include "gog_shared.h"
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

#pragma region GML callbacks
// As per http://help.yoyogames.com/hc/en-us/articles/216755258:
void(*gml_event_perform_async)(gml_ds_map map, int event_type) = nullptr;
int(*gml_ds_map_create_ext)(int n, ...) = nullptr;
bool(*gml_ds_map_set_double)(gml_ds_map map, const char* key, double value) = nullptr;
bool(*gml_ds_map_set_string)(gml_ds_map map, const char* key, const char* value) = nullptr;
dllx double RegisterCallbacks(char* arg1, char* arg2, char* arg3, char* arg4) {
	gml_event_perform_async = (void(*)(gml_ds_map, int))arg1;
	gml_ds_map_create_ext = (int(*)(int, ...))arg2;
	gml_ds_map_set_double = (bool(*)(gml_ds_map, const char*, double))arg3;
	gml_ds_map_set_string = (bool(*)(gml_ds_map, const char*, const char*))arg4;
	return 0;
}
#pragma endregion

