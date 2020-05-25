#pragma once
#define _CRT_SECURE_NO_WARNINGS
#ifdef _WIN32
#include "stdafx.h"
#endif
#include <vector>
#include <memory>
#include <sstream>
#include <iomanip>

#pragma warning(disable: 26812)
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
char* ccr(const char* str);
namespace gml {
	inline bool f2z(double val) {
		return val > 0.5;
	}
	inline int32_t f2i(double val) {
		if (val < (double)INT32_MIN) return INT32_MIN;
		if (val > (double)INT32_MAX) return INT32_MAX;
		return (int32_t)val;
	}
	inline uint32_t f2u(double val) {
		if (val < 0) return 0U;
		if (val > (double)UINT32_MAX) return UINT32_MAX;
		return (uint32_t)val;
	}
	inline uint8_t f2u8(double val) {
		if (val < 0) return 0U;
		if (val > (double)UINT8_MAX) return UINT8_MAX;
		return (uint8_t)val;
	}
	template<typename T> T f2e(double val) {
		return (T)(int)val;
	}
	//
	inline const char* l2s(uint64_t val) {
		static char buf[std::size("18446744073709551615")];
		sprintf(buf, "%I64u", val);
		return buf;
	}
	inline const char* g2s(GalaxyID id) {
		return l2s(id.ToUint64());
	}
	//
	inline GalaxyID s2g(const char* id_str) {
		return GalaxyID(id_str ? atoll(id_str) : 0);
	}
}
#pragma endregion

#pragma region GML callbacks
// As per http://help.yoyogames.com/hc/en-us/articles/216755258:
typedef int gml_ds_map;
extern void(*gml_event_perform_async)(gml_ds_map map, int event_type);
extern int(*gml_ds_map_create_ext)(int n, ...);
extern bool(*gml_ds_map_set_double)(gml_ds_map map, const char* key, double value);
extern bool(*gml_ds_map_set_string)(gml_ds_map map, const char* key, const char* value);
dllx double RegisterCallbacks(char* arg1, char* arg2, char* arg3, char* arg4);
inline gml_ds_map gml_ds_map_create() {
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
	bool set_id(char* key, const GalaxyID& val) {
		return gml_ds_map_set_string(map, key, gml::g2s(val));
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

extern bool gog_is_user_logged_on_v;
extern bool gog_stats_ready_v;