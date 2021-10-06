package ;

/**
 * ...
 * @author YellowAfterlife
 */
@:snakeCase @:dsMap typedef GogAsync = {
	eventType:GogAsyncType,
	?success:Bool,
	?lobbyID:GalaxyID,
}
enum abstract GogAsyncType(String) {
	var UserAuth = "gog_user_auth";
	var UserStats = "gog_user_stats";
	var LobbyCreate = "gog_lobby_create";
	var LobbyEnter = "gog_lobby_enter";
	var LobbyLeave = "gog_lobby_leave";
	var GameInvitationReceived = "gog_game_invitation_received";
	var GameJoinRequested = "gog_game_join_requested";
	// todo: a bunch
}