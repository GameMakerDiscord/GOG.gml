#define gog_preinit
// NB! Only edit this GML file in the GMS2 project,
// it is copied over to GMS1 as a post-build step in VS project.


#define gog_init
/// (client_id, client_secret, auto_sign_in = true)
var l_client_id = argument[0], l_client_secret = argument[1];
var l_auto_sign_in = argument_count > 2 ? argument[2] : true;
return gog_init_raw(l_client_id, l_client_secret, l_auto_sign_in);

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