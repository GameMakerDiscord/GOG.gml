package ;

/**
 * ...
 * @author YellowAfterlife
 */
@:snakeCase @:native("gog")
extern class GogCore {
	
	static function init(clientID:String, clientSecret:String, autoSignIn:Bool = true):Bool;
	
	static function cleanup():Void;
	
	static function update():Void;
	
	static function getError():String;
	
	static function getErrorText():String;
}
