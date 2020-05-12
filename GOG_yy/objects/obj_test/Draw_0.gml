draw_set_font(fnt_test);
draw_set_color(c_white);
// show the avatar once loaded:
if (avatar_sprite != -1) {
    draw_sprite(avatar_sprite, 0, 5, room_height - sprite_get_height(avatar_sprite) - 5);
}
// show status:
draw_set_halign(fa_right);
var s = "", i, q;
if (auth_state == true) {
    s += "Logged in#";
} else if (auth_state == false) {
    s += "Failed to login#";
} else s += "Logging in...#";
if (stats_state == true) {
    s += "Stats ready#";
} else if (stats_state == false) {
    s += "Stats failed#";
} else s += "Getting stats...#";
draw_text(room_width - 5, 5, string_hash_to_newline(s));
// show instructions:
draw_set_halign(fa_left);
s = "Try things:";
s += "#1: Check achievement";
s += "#2: Acquire achievement";
s += "#3: Set leaderboard score";
s += "#4: Fetch global scores";
s += "#5: Fetch nearby scores";
s += "#6: Fetch friend scores";
s += "#P.S.: all goes into compile form";
draw_text(5, 5, string_hash_to_newline(s));
// show leaderboard data (once available):
s = "";
for (i = 0; i < leaderboard_count; i++) {
    draw_text(300, 50 + i * 20, string_hash_to_newline(string(leaderboard_rank[i]) + "."));
    draw_text(340, 50 + i * 20, string_hash_to_newline(string(leaderboard_score[i])));
    draw_text(400, 50 + i * 20, string_hash_to_newline(leaderboard_name[i]));
}
// check inputs:
var d = array_create(10);
for (i = 0; i < 10; i++) {
    d[i] = keyboard_check_pressed(ord("0") + i);
}
// handle inputs:
if (d[1]) {
    q = gog_get_achievement("first_win");
    if (q >= 0) {
        show_debug_message("Achievement status: " + string(q));
    } else show_debug_message(gog_get_error_text());
}
if (d[2]) {
    if (gog_set_achievement("first_win")) {
        show_debug_message("Got the achievement.");
    } else show_debug_message(gog_get_error_text());
}
if (d[3]) {
    leaderboard_intent = 1;
    leaderboard_new_score = get_integer("New score?", 1);
    if (gog_create_leaderboard("best_winners", "best_winners", lb_sort_descending, lb_disp_numeric)) {
        show_debug_message("Fetching leaderboard...");
    } else show_debug_message(gog_get_error_text());
}
if (d[4]) {
    leaderboard_intent = 2;
    if (gog_create_leaderboard("best_winners", "best_winners", lb_sort_descending, lb_disp_numeric)) {
        show_debug_message("Fetching leaderboard...");
    } else show_debug_message(gog_get_error_text());
}
if (d[5]) {
    leaderboard_intent = 3;
    if (gog_create_leaderboard("best_winners", "best_winners", lb_sort_descending, lb_disp_numeric)) {
        show_debug_message("Fetching leaderboard...");
    } else show_debug_message(gog_get_error_text());
}
if (d[6]) {
    leaderboard_intent = 4;
    if (gog_create_leaderboard("best_winners", "best_winners", lb_sort_descending, lb_disp_numeric)) {
        show_debug_message("Fetching leaderboard...");
    } else show_debug_message(gog_get_error_text());
}

