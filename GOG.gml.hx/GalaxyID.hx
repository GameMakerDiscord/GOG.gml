package ;
import haxe.Int64;

/**
 * ...
 * @author YellowAfterlife
 */
abstract GalaxyID(String) {
	private inline function new(s:String) this = s;
	public static inline var defValue:GalaxyID = cast "0";
	
	public static inline function fromString(s:String):GalaxyID {
		return cast s;
	}
	
	public static inline function fromInt64(id:Int64) {
		return cast gml.NativeType.toString(id);
	}
	
	public inline function toString():String {
		return this;
	}
	
	public inline function toInt64():Int64 {
		return gml.NativeType.toInt64(this);
	}
}