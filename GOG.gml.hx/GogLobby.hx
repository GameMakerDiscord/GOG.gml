package ;
import gml.io.Buffer;
import haxe.extern.EitherType;

/**
 * ...
 * @author YellowAfterlife
 */
@:snakeCase extern class GogLobby {
	
	static function create(type:GogLobbyType, maxMembers:Int, joinable:Bool, topology:GogLobbyTopologyType):Void;
	
	static function join(lobby:GalaxyID):Void;
	
	static function leave(lobby:GalaxyID):Void;
	
	static function isJoinable(lobby:GalaxyID):Bool;
	
	static function setJoinable(lobby:GalaxyID, joinable:Bool):Void;
	
	static function getType(lobby:GalaxyID):GogLobbyType;
	
	static function setType(lobby:GalaxyID, type:GogLobbyType):Void;
	
	static function setData(lobby:GalaxyID, key:String, val:EitherType<String, Float>):Void;
	
	static function requestData(lobby:GalaxyID):Void;
	
	static function deleteData(lobby:GalaxyID, key:String):Void;
	
	static function getData(lobby:GalaxyID, key:String):String;
	
	static function getDataCount(lobby:GalaxyID):Int;
	
	// todo: member data
	
	static function getOwner(lobby:GalaxyID):GalaxyID;
	
	static function getMemberCount(lobby:GalaxyID):Int;
	
	static function getMaxMemberCount(lobby:GalaxyID):Int;
	
	static function setMaxMemberCount(lobby:GalaxyID, count:Int):Void;
	
	static function getMemberAt(lobby:GalaxyID, index:Int):GalaxyID;
	
	//
	static function sendMessage(lobby:GalaxyID, buf:Buffer, size:Int):Bool;
	
	static function sendMessageString(lobby:GalaxyID, data:String):Bool;
	
	static function getMessage(lobby:GalaxyID, messageID:GogLobbyMessageID, sender:GalaxyID, buf:Buffer, messageSize:Int):Int;
	
	static function showInviteOverlay(connectionString:String):Void;
}
enum abstract GogLobbyType(Int) {
	var Private = 0;
	var FriendsOnly;
	var Public;
	var InvisibleToFriends;
}
enum abstract GogLobbyTopologyType(Int) {
	var Fcm = 1;
	var Star;
	var Connectionless;
	var FcmOwnershipTransition;
}
typedef GogLobbyMessageID = Int;