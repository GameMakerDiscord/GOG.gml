package ;

/**
 * ...
 * @author YellowAfterlife
 */
@:snakeCase extern class GogUser {
	
	@:expose("gog_is_user_logged_on")
	static function isLoggedOn():Bool;
	
	@:expose("gog_get_user_galaxy_id")
	static function getGalaxyID():GalaxyID;
	
	@:expose("gog_request_user_info")
	static function requestUserInfo(user:GalaxyID):Void;
	
	@:expose("gog_get_persona_name")
	static function getPersonaName():String;
	
}