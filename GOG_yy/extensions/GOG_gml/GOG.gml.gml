#define gog_preinit
// NB! Only edit this GML file in the GMS2 project,
// it is copied over to GMS1 as a post-build step in VS project.
global.gog_args_buffer = buffer_create(128, buffer_fixed, 1);

#define gog_init
/// (client_id, client_secret, auto_sign_in = true)
var l_client_id = argument[0], l_client_secret = argument[1];
var l_auto_sign_in = argument_count > 2 ? argument[2] : true;
return gog_init_raw(l_client_id, l_client_secret, l_auto_sign_in);

#define gog_to_string
/// (value)->string
var l_value = argument[0];
if (is_string(l_value)) return l_value;
if (is_real(l_value)) {
	var l_s = string_format(l_value, 0, 16);
	var l_n = string_byte_length(l_s);
	var l_i = l_n;
	while (l_i > 0) {
		switch (string_byte_at(l_s, l_i)) {
			case 48:
				--l_i;
				continue;
			case 46: --l_i; break;
		}
		break;
	}
	return string_copy(l_s, 1, l_i);
}
return string(l_value);

#define gog_get_error
/// ()->
var l_result = gog_get_error_raw();
if (is_string(l_result)) return result;
return "Native extension not loaded";

#define gog_get_error_text
/// ()->
var l_result = gog_get_error_text_raw();
if (is_string(l_result)) return result;
return "The native extension either failed to load or is not available on this platform."
	+ " Check your Output for possible clues!";

#define gog_user_sign_in_galaxy
/// (require_online = false)
var l_require_online = argument_count > 0 ? argument[0] : false;
return gog_user_sign_in_galaxy_raw(l_require_online);

#define gog_user_sign_in_steam
/// (app_ticket_buf, ?app_ticket_size)
var l_buf = argument[0];
var l_size = argument_count > 1 ? argument[1] : buffer_get_size(l_buf);
return gog_user_sign_in_steam_raw(buffer_get_address(l_buf), l_size, steam_get_persona_name());

#define gog_lobby_set_data
/// (lobby_id, key, value)
return gog_lobby_set_data_raw(argument0, argument1, gog_to_string(argument2));

#define gog_lobby_send_message
/// (lobby_id, buffer, size)
return gog_lobby_send_message_raw(argument0, buffer_get_address(argument1), min(argument2, buffer_get_size(argument1)));

#define gog_lobby_get_message
/// (lobby_id, message_id, sender_id, buffer, message_size)->bytes_read
var l_buf = argument3;
var l_args = global.gog_args_buffer;
var l_size = argument4;
buffer_seek(l_args, buffer_seek_start, 0);
buffer_write(l_args, buffer_u32, argument1);
buffer_write(l_args, buffer_u32, l_size);
if (buffer_get_size(l_buf) < l_size) buffer_resize(l_buf, l_size);
return gog_lobby_get_message_raw(argument0, argument2, buffer_get_address(l_args), buffer_get_address(l_buf));

#define gog_network_send_packet
/// (user_id, buffer, size, send_type, channel = 0)
var l_dest = argument[0], l_buf = argument[1], l_size = argument[2], l_send_type = argument[3];
var l_channel = argument_count > 4 ? argument[4] : 0;
var l_args = global.gog_args_buffer;
buffer_seek(l_args, buffer_seek_start, 0);
buffer_write(l_args, buffer_u32, l_size);
buffer_write(l_args, buffer_u8, l_send_type);
buffer_write(l_args, buffer_u8, l_channel);
return gog_network_send_packet_raw(l_dest, buffer_get_address(l_buf), buffer_get_address(l_args));

#define gog_network_read_packet
/// (buffer, channel = 0)
var l_buf = argument[0];
var l_channel = argument_count > 1 ? argument[1] : 0;
var l_size = gog_network_read_packet_pre(l_channel) - 1;
if (l_size < 0) return false;
if (buffer_get_size(l_buf) < l_size) buffer_resize(l_buf, l_size);
var l_args = global.gog_args_buffer;
l_size = gog_network_read_packet_post(buffer_get_address(l_buf), l_size, buffer_get_address(l_args), l_channel);
if (l_size < 0) return false;
global.gog_network_packet_size = l_size;
buffer_seek(l_args, buffer_seek_start, 0);
global.gog_network_packet_sender = buffer_read(l_args, buffer_string);
return true;

#define gog_network_get_packet_size
/// ()->number
return global.gog_network_packet_size;

#define gog_network_get_packet_sender
/// ()->
return global.gog_network_packet_sender;