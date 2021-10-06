package ;
import gml.io.Buffer;

/**
 * ...
 * @author YellowAfterlife
 */
@:snakeCase extern class GogNetwork {
	
	static function sendPacket(user:GalaxyID, buf:Buffer, size:Int, sendType:GogNetworkSendType, channel:Int = 0):Bool;
	
	static function readPacket(buf:Buffer, channel:Int = 0):Bool;
	
	static var packetSize(get, never):Int;
	private static function get_packetSize():Int;
	
	static var packetSender(get, never):GalaxyID;
	private static function get_packetSender():GalaxyID;
	
	static function getPingWith(user:GalaxyID):Int;
	
	static function getConnectionType(user:GalaxyID):GogNetworkConnectionType;
	
	static function getNatType():GogNetworkNatType;
	
	static function requestNatType():Void;
}
enum abstract GogNetworkSendType(Int) {
	var Unreliable = 0;
	var Reliable;
	var UnreliableImmediate;
	var ReliableImmediate;
}
enum abstract GogNetworkConnectionType(Int) {
	var None = 0;
	var Direct;
	var Proxy;
}
enum abstract GogNetworkNatType(Int) {
	var None = 0;
	var FullCone;
	var AddressRestricted;
	var PortRestricted;
	var Symmetric;
	var Unknown;
}