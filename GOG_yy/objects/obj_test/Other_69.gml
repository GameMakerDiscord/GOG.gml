switch (async_load[?"event_type"]) {
case "gog_user_auth":
    auth_state = async_load[?"success"];
    if (async_load[?"success"]) {
        // fetch the user's avatar, for example (rest is in async - HTTP)
        var _id = gog_get_user_galaxy_id();
        var _url = gog_get_user_avatar_url(_id, 1);
        avatar_request = http_get_file(_url, "avatar.png");
    }
    break;
case "gog_user_stats": stats_state = async_load[?"success"]; break;
case "gog_leaderboard_retrieve":
    if (!async_load[?"success"]) break;
    // (what were we fetching this for?)
    switch (leaderboard_intent) {
        case 1:
            if (gog_upload_score("best_winners", leaderboard_new_score, true)) {
                show_debug_message("Score uploaded.");
            } else show_debug_message(gog_get_error_text());
            break;
        case 2:
            if (gog_download_scores("best_winners", 1, 25)) {
                show_debug_message("Downloading scores...");
            } else show_debug_message(gog_get_error_text());
            break;
        case 3:
            if (gog_download_scores_around_user("best_winners", -4, 4)) {
                show_debug_message("Downloading scores...");
            } else show_debug_message(gog_get_error_text());
            break;
        case 4:
            if (gog_download_friends_scores("best_winners")) {
                show_debug_message("Downloading scores...");
            } else show_debug_message(gog_get_error_text());
            break;
    }
    leaderboard_intent = 0;
    break;
case "gog_leaderboard_download":
    if (!async_load[?"success"]) break;
    //
    var entries_map = json_decode(async_load[?"entries"]);
    var entries_list = entries_map[?"entries"];
    leaderboard_caption = gog_get_leaderboard_display_name(async_load[?"lb_name"]);
    leaderboard_count = async_load[?"numEntries"];
    // in old versions of GMS you'd instead do
    // if (leaderboard_count > 0) leaderboard_rank[leaderboard_count - 1] = 0;
    leaderboard_rank = array_create(leaderboard_count);
    leaderboard_score = array_create(leaderboard_count);
    leaderboard_name = array_create(leaderboard_count);
    for (var i = 0; i < leaderboard_count; i++) {
        var entry = entries_list[|i];
        leaderboard_rank[i] = entry[?"rank"];
        leaderboard_score[i] = entry[?"score"];
        leaderboard_name[i] = entry[?"name"];
    }
    ds_map_destroy(entries_map);
    break;
}

