// gog_network.cpp
#include "gog_shared.h"

struct gog_network_send_packet_args {
	uint32_t dataSize;
	uint8_t sendType, channel;
};
dllx double gog_network_send_packet_raw(const char* user_id, const char* data, gog_network_send_packet_args* args) {
	/// gml
	enum class gog_network_type {
		unreliable,
		reliable,
		unreliable_immediate,
		reliable_immediate,
	};
	auto sendType = (P2PSendType)args->sendType;
	return Networking()->SendP2PPacket(gml::s2g(user_id), data, args->dataSize, sendType, args->channel);
}

dllx double gog_network_read_packet_pre(double channel_id) {
	// we are returning size+1 here so that the game doesn't softlock
	// if the extension is failed to load/not included and GM stubs out calls by returning 0
	uint32_t size = 0;
	return Networking()->IsP2PPacketAvailable(&size, gml::f2u8(channel_id)) ? size + 1 : 0;
}
dllx double gog_network_read_packet_post(char* dest, double dest_size, char* out_id_s, double channel_id) {
	uint32_t found = 0;
	GalaxyID out_id;
	if (Networking()->ReadP2PPacket(dest, gml::f2u(dest_size), &found, out_id, gml::f2u8(channel_id))) {
		sprintf(out_id_s, "%I64u", out_id.ToUint64());
		return found;
	} else return -1;
}

///
dllx double gog_network_get_ping_with(const char* user_or_lobby_id) {
	return Networking()->GetPingWith(gml::s2g(user_or_lobby_id));
}

///
dllx double gog_network_get_connection_type(const char* user_id) {
	/// gml
	enum class gog_network_connection_type { none, direct, proxy };
	return (int)Networking()->GetConnectionType(gml::s2g(user_id));
}

/// ()->gog_network_nat_type
dllx double gog_network_get_nat_type() {
	/// gml
	enum class gog_network_nat_type {
		none, full_cone, address_restricted, port_restricted, symmetric, unknown
	};
	return (int)Networking()->GetNatType();
}

///
dllx double gog_network_request_nat_type() {
	Networking()->RequestNatTypeDetection();
	return true;
}