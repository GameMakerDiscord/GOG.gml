if (async_load[?"id"] == avatar_request) {
    avatar_request = -1;
    if (async_load[?"status"] == 0) {
        avatar_sprite = sprite_add("avatar.png", 1, false, false, 0, 0);
    }
}

