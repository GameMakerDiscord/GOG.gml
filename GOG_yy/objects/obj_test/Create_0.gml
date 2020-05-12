if (!gog_init("48500786244777727", "8573705eedaf4808fb704aeecc3763248849238b316e42f9e276b0bf40d01efe")) {
    var e = gog_get_error_text();
    if (!is_string(e)) e = "DLL init failed.";
    show_debug_message("Failed to initialize GOG: " + e);
}
leaderboard_count = 0;
leaderboard_caption = "";
leaderboard_name = undefined;
leaderboard_rank = undefined;
leaderboard_score = undefined;
leaderboard_intent = 0;
auth_state = -1;
stats_state = -1;
avatar_request = -1;
avatar_sprite = -1;

