{
    "id": "47f6fdd8-8c0a-49f4-9b09-302b3ae3b808",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "GOG_gml",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 66,
    "date": "2020-09-12 01:05:40",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "73d91459-3f44-4cea-885c-e7a8459da48b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 105553658380352,
            "filename": "GOG.gml.dll",
            "final": "",
            "functions": [
                {
                    "id": "fd8dd19d-c7eb-456d-a19e-d2a42ae66c30",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "RegisterCallbacks",
                    "returnType": 2
                },
                {
                    "id": "b4a4b9ff-e6e8-3db6-604a-cb7f409fff29",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_error_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_get_error_raw",
                    "returnType": 1
                },
                {
                    "id": "73f89b24-e0ed-612d-8afe-921d26390a4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_error_text_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_get_error_text_raw",
                    "returnType": 1
                },
                {
                    "id": "e0fcce5a-c847-45b5-8e54-a0e0021d0229",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_ready",
                    "help": "gog_stats_ready()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_stats_ready",
                    "returnType": 2
                },
                {
                    "id": "1110f00f-dd6c-482b-9574-38acefa2ac7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_stats_auto_submit",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_stats_auto_submit",
                    "returnType": 2
                },
                {
                    "id": "9f290a3d-bed0-4a53-8b33-f72c572aea37",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_submit",
                    "help": "gog_stats_submit()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_stats_submit",
                    "returnType": 2
                },
                {
                    "id": "9c624788-be91-420e-b9fb-abe440d9d1c9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_request",
                    "help": "gog_stats_request()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_stats_request",
                    "returnType": 2
                },
                {
                    "id": "e7011695-41f8-4d50-bc07-7ba9deadf4d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_reset_all_stats_achievements",
                    "help": "gog_reset_all_stats_achievements()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_reset_all_stats_achievements",
                    "returnType": 2
                },
                {
                    "id": "55d06eaa-ccaf-481e-a9e2-9870226cb602",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_stat_int",
                    "help": "gog_get_stat_int(stat_name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_stat_int",
                    "returnType": 2
                },
                {
                    "id": "387d40c6-9542-4456-ab85-e96ccb4d3a11",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_stat_float",
                    "help": "gog_get_stat_float(stat_name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_stat_float",
                    "returnType": 2
                },
                {
                    "id": "402aa7a0-522b-4997-93f8-1fc10fdde296",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_set_stat_int",
                    "help": "gog_set_stat_int(stat_name, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_set_stat_int",
                    "returnType": 2
                },
                {
                    "id": "ec899311-e9c8-4a21-9589-27197b2c0d2e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_set_stat_float",
                    "help": "gog_set_stat_float(stat_name, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_set_stat_float",
                    "returnType": 2
                },
                {
                    "id": "b798f889-d432-4fed-91f3-2fb4cd205464",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_achievement",
                    "help": "gog_get_achievement(name) : Returns achievement status (true\/false), -1 on error",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_achievement",
                    "returnType": 2
                },
                {
                    "id": "17b75705-5fd4-428b-8e66-29b2e520265d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_achievement_time",
                    "help": "gog_get_achievement_time(name) : Returns time of obtaining achievement, -1 on error",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_achievement_time",
                    "returnType": 2
                },
                {
                    "id": "ad5efbdb-eb80-45ee-97e4-8505f595cc1d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_set_achievement",
                    "help": "gog_set_achievement(name) : Acquires an achievement, returns whether successfully.",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_set_achievement",
                    "returnType": 2
                },
                {
                    "id": "c451ba58-147e-47c3-9e78-bfa53ba6eaa7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_create_leaderboard",
                    "help": "gog_create_leaderboard(name, display_name, lb_sort, lb_disp)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_create_leaderboard",
                    "returnType": 2
                },
                {
                    "id": "933652c4-8f10-47de-9efe-7b49161930a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_leaderboard_display_name",
                    "help": "gog_get_leaderboard_display_name(name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_leaderboard_display_name",
                    "returnType": 1
                },
                {
                    "id": "4448cf16-e74a-43f2-ae30-feaeb5f68a97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_upload_score",
                    "help": "gog_upload_score(lb_name, score_int32, force_update)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_upload_score",
                    "returnType": 2
                },
                {
                    "id": "744b9ce8-3e52-4182-b3cc-950c8ec7e301",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_download_scores",
                    "help": "gog_download_scores(lb_name, start_idx, end_idx)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_download_scores",
                    "returnType": 2
                },
                {
                    "id": "0da5b361-d495-4cc5-b247-f1b7e0b0bfca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_download_scores_around_user",
                    "help": "gog_download_scores_around_user(lb_name, range_start, range_end)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_download_scores_around_user",
                    "returnType": 2
                },
                {
                    "id": "526716dc-9247-428d-a6af-4342d7ae0bf8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_download_friends_scores",
                    "help": "gog_download_friends_scores(lb_name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_download_friends_scores",
                    "returnType": 2
                },
                {
                    "id": "7592f87a-2b9c-4dc8-af8f-0223d05859b9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_user_installed_dlc",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_user_installed_dlc",
                    "returnType": 2
                },
                {
                    "id": "a444af6c-38ba-45f7-8389-1023b9692b80",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_is_user_logged_on",
                    "help": "gog_is_user_logged_on()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_is_user_logged_on",
                    "returnType": 2
                },
                {
                    "id": "1cdee623-10ba-4828-b943-2e23523de337",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_user_persona_name",
                    "help": "gog_get_user_persona_name(galaxy_id) : Unlike Steam, you get the actual name once loaded and \"\" on error.",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_user_persona_name",
                    "returnType": 1
                },
                {
                    "id": "80d54f39-3f35-45ef-9992-3f294a497dcb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_get_user_avatar_url",
                    "help": "gog_get_user_avatar_url(galaxy_id, size)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_user_avatar_url",
                    "returnType": 1
                },
                {
                    "id": "dacbfa63-8c7a-4c64-9cea-9ba631937a17",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_request_user_info",
                    "help": "gog_request_user_info(galaxy_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_request_user_info",
                    "returnType": 2
                },
                {
                    "id": "1148b7b9-473d-43fd-969b-8d9c8beb6447",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_persona_name",
                    "help": "gog_get_persona_name()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_persona_name",
                    "returnType": 1
                },
                {
                    "id": "2854e471-38c7-4416-8e88-57fe51390f72",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_user_galaxy_id",
                    "help": "gog_get_user_galaxy_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_user_galaxy_id",
                    "returnType": 1
                },
                {
                    "id": "a295bf18-357f-46cd-8b33-070f9dfdae5c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_update",
                    "help": "gog_update()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_update",
                    "returnType": 2
                },
                {
                    "id": "c3d3ce88-f7f9-2cc1-9fb5-52e6d78e66be",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_user_sign_in_galaxy_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_user_sign_in_galaxy_raw",
                    "returnType": 2
                },
                {
                    "id": "3c2c3177-c4ca-1f3e-351f-3480b0358851",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "gog_user_sign_in_steam_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_user_sign_in_steam_raw",
                    "returnType": 2
                },
                {
                    "id": "67bcdf06-4f12-f8b1-48cd-2cfd45f093c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "gog_init_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_init_raw",
                    "returnType": 2
                },
                {
                    "id": "80e5c081-7f5f-4faa-94ce-b2a892ca9dd1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_cleanup",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_cleanup",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "fd8dd19d-c7eb-456d-a19e-d2a42ae66c30",
                "06c38a2a-8645-4dad-8f9f-fa9caae90a00",
                "30fe6598-0b93-4fe8-bb07-cfd55c42dbac",
                "e0fcce5a-c847-45b5-8e54-a0e0021d0229",
                "1110f00f-dd6c-482b-9574-38acefa2ac7e",
                "9f290a3d-bed0-4a53-8b33-f72c572aea37",
                "9c624788-be91-420e-b9fb-abe440d9d1c9",
                "e7011695-41f8-4d50-bc07-7ba9deadf4d8",
                "55d06eaa-ccaf-481e-a9e2-9870226cb602",
                "387d40c6-9542-4456-ab85-e96ccb4d3a11",
                "402aa7a0-522b-4997-93f8-1fc10fdde296",
                "ec899311-e9c8-4a21-9589-27197b2c0d2e",
                "b798f889-d432-4fed-91f3-2fb4cd205464",
                "17b75705-5fd4-428b-8e66-29b2e520265d",
                "ad5efbdb-eb80-45ee-97e4-8505f595cc1d",
                "c451ba58-147e-47c3-9e78-bfa53ba6eaa7",
                "933652c4-8f10-47de-9efe-7b49161930a8",
                "4448cf16-e74a-43f2-ae30-feaeb5f68a97",
                "744b9ce8-3e52-4182-b3cc-950c8ec7e301",
                "0da5b361-d495-4cc5-b247-f1b7e0b0bfca",
                "526716dc-9247-428d-a6af-4342d7ae0bf8",
                "7592f87a-2b9c-4dc8-af8f-0223d05859b9",
                "a444af6c-38ba-45f7-8389-1023b9692b80",
                "1cdee623-10ba-4828-b943-2e23523de337",
                "80d54f39-3f35-45ef-9992-3f294a497dcb",
                "dacbfa63-8c7a-4c64-9cea-9ba631937a17",
                "1148b7b9-473d-43fd-969b-8d9c8beb6447",
                "2854e471-38c7-4416-8e88-57fe51390f72",
                "a295bf18-357f-46cd-8b33-070f9dfdae5c",
                "831806ca-7fd8-49dd-a133-7e05ce50472b",
                "80e5c081-7f5f-4faa-94ce-b2a892ca9dd1"
            ],
            "origname": "extensions\\GOG.gml.dll",
            "uncompress": false
        },
        {
            "id": "6bcf8da1-e839-411e-9820-7e52a8a3dd9f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "GOG.gml.gml",
            "final": "",
            "functions": [
                {
                    "id": "d3f0da0b-8f7a-4c34-b042-2ca1aa6ae30b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_preinit",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_preinit",
                    "returnType": 2
                },
                {
                    "id": "f5ee44b8-6904-2f31-3e00-4394a0979c48",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "gog_init",
                    "help": "gog_init(client_id, client_secret, auto_sign_in = true)",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_init",
                    "returnType": 2
                },
                {
                    "id": "2c87cb1a-90e1-7f09-0c8e-e009af3578b5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_error",
                    "help": "gog_get_error()->",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_get_error",
                    "returnType": 2
                },
                {
                    "id": "1f5763c1-9176-c1cc-94e4-63946879c513",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_error_text",
                    "help": "gog_get_error_text()->",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_get_error_text",
                    "returnType": 2
                },
                {
                    "id": "03b809aa-5545-c870-510c-aa175b24f369",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "gog_user_sign_in_galaxy",
                    "help": "gog_user_sign_in_galaxy(require_online = false)",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_user_sign_in_galaxy",
                    "returnType": 2
                },
                {
                    "id": "59523124-3f12-347a-f210-a3036a8093b5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "gog_user_sign_in_steam",
                    "help": "gog_user_sign_in_steam(app_ticket_buf, ?app_ticket_size)",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_user_sign_in_steam",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "de37633c-c2b4-40ed-a3ae-83bc4447aab1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 67108866,
            "filename": "GOG.gml.dylib",
            "final": "",
            "functions": [
                {
                    "id": "11dc3602-236c-48fc-b229-dbca5c60b3ab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "RegisterCallbacks",
                    "returnType": 2
                },
                {
                    "id": "db3c4faa-d898-72df-a00d-364c8247c05b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_error_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_get_error_raw",
                    "returnType": 1
                },
                {
                    "id": "28187319-af07-f671-d716-c628a445255d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_error_text_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_get_error_text_raw",
                    "returnType": 1
                },
                {
                    "id": "b6ee82fc-9ab8-4357-bcd9-26f90e53a75c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_ready",
                    "help": "gog_stats_ready()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_stats_ready",
                    "returnType": 2
                },
                {
                    "id": "9a0d2261-28e1-4367-a103-664281267ba9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_stats_auto_submit",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_stats_auto_submit",
                    "returnType": 2
                },
                {
                    "id": "cc3f87af-9210-48ea-bc90-abfc3fdcfcb4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_submit",
                    "help": "gog_stats_submit()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_stats_submit",
                    "returnType": 2
                },
                {
                    "id": "a520c2c4-39a6-4317-8cc6-ce2056ba44d3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_request",
                    "help": "gog_stats_request()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_stats_request",
                    "returnType": 2
                },
                {
                    "id": "f08f7c10-0bf3-4bab-b511-0c493e0bc413",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_reset_all_stats_achievements",
                    "help": "gog_reset_all_stats_achievements()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_reset_all_stats_achievements",
                    "returnType": 2
                },
                {
                    "id": "c10a0e1a-5e6c-406f-b5a5-eb19bb160fe7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_stat_int",
                    "help": "gog_get_stat_int(stat_name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_stat_int",
                    "returnType": 2
                },
                {
                    "id": "2a15b1ef-f64f-440a-b0be-c724e9ed2fc7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_stat_float",
                    "help": "gog_get_stat_float(stat_name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_stat_float",
                    "returnType": 2
                },
                {
                    "id": "03e821f0-9423-452f-9555-a725caea9f71",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_set_stat_int",
                    "help": "gog_set_stat_int(stat_name, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_set_stat_int",
                    "returnType": 2
                },
                {
                    "id": "a3110c3d-3e90-4ebe-bb62-a28fddd2b0fb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_set_stat_float",
                    "help": "gog_set_stat_float(stat_name, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_set_stat_float",
                    "returnType": 2
                },
                {
                    "id": "890e859d-563c-4ae9-90c2-38fc4c9536f0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_achievement",
                    "help": "gog_get_achievement(name) : Returns achievement status (true\/false), -1 on error",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_achievement",
                    "returnType": 2
                },
                {
                    "id": "36458535-f6b1-4fac-955c-afcb8feecc2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_achievement_time",
                    "help": "gog_get_achievement_time(name) : Returns time of obtaining achievement, -1 on error",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_achievement_time",
                    "returnType": 2
                },
                {
                    "id": "fe942b76-bf8e-4ef5-9785-14451715f91c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_set_achievement",
                    "help": "gog_set_achievement(name) : Acquires an achievement, returns whether successfully.",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_set_achievement",
                    "returnType": 2
                },
                {
                    "id": "a202b5e4-c687-4117-a7c0-cf8e3f2ffa94",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_create_leaderboard",
                    "help": "gog_create_leaderboard(name, display_name, lb_sort, lb_disp)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_create_leaderboard",
                    "returnType": 2
                },
                {
                    "id": "e0d42467-c50b-4970-88e8-d24b3d3d197b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_leaderboard_display_name",
                    "help": "gog_get_leaderboard_display_name(name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_leaderboard_display_name",
                    "returnType": 1
                },
                {
                    "id": "60d459d5-8062-4ecc-9b01-7dfb26eda80e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_upload_score",
                    "help": "gog_upload_score(lb_name, score_int32, force_update)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_upload_score",
                    "returnType": 2
                },
                {
                    "id": "19382198-a2c3-4530-b287-f53813670686",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_download_scores",
                    "help": "gog_download_scores(lb_name, start_idx, end_idx)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_download_scores",
                    "returnType": 2
                },
                {
                    "id": "4de771c5-e931-4fee-85f0-b568b09445f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_download_scores_around_user",
                    "help": "gog_download_scores_around_user(lb_name, range_start, range_end)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_download_scores_around_user",
                    "returnType": 2
                },
                {
                    "id": "631f1d43-0ad0-416e-a9e1-4e35158243ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_download_friends_scores",
                    "help": "gog_download_friends_scores(lb_name)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_download_friends_scores",
                    "returnType": 2
                },
                {
                    "id": "e48bfd01-cc76-4a1f-8aa7-8095a64dd507",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_user_installed_dlc",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_user_installed_dlc",
                    "returnType": 2
                },
                {
                    "id": "21783c32-eecf-4f3e-80c6-331b43577a6e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_is_user_logged_on",
                    "help": "gog_is_user_logged_on()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_is_user_logged_on",
                    "returnType": 2
                },
                {
                    "id": "e60e3248-0bc6-44eb-a138-4ef427b13c52",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_get_user_persona_name",
                    "help": "gog_get_user_persona_name(galaxy_id) : Unlike Steam, you get the actual name once loaded and \"\" on error.",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_user_persona_name",
                    "returnType": 1
                },
                {
                    "id": "ab734b10-8644-45c1-b901-086055268f99",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_get_user_avatar_url",
                    "help": "gog_get_user_avatar_url(galaxy_id, size)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_user_avatar_url",
                    "returnType": 1
                },
                {
                    "id": "eb1a5652-b303-4377-921f-32871ec7e0a7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_request_user_info",
                    "help": "gog_request_user_info(galaxy_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_request_user_info",
                    "returnType": 2
                },
                {
                    "id": "33d9b288-279f-4719-ba7f-0893b3290613",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_persona_name",
                    "help": "gog_get_persona_name()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_persona_name",
                    "returnType": 1
                },
                {
                    "id": "bfddd76c-230b-4394-b01e-f95a4de0e344",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_get_user_galaxy_id",
                    "help": "gog_get_user_galaxy_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_get_user_galaxy_id",
                    "returnType": 1
                },
                {
                    "id": "7380e897-11ce-401d-b6e0-2cee94967449",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_update",
                    "help": "gog_update()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_update",
                    "returnType": 2
                },
                {
                    "id": "7d5c417f-c7ea-a3b2-8425-f47e4f6cc8c0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_user_sign_in_galaxy_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_user_sign_in_galaxy_raw",
                    "returnType": 2
                },
                {
                    "id": "795abc6d-e8c5-e69f-cea5-5b1e07bf7ed8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "gog_user_sign_in_steam_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_user_sign_in_steam_raw",
                    "returnType": 2
                },
                {
                    "id": "8b595a2a-4008-34e0-f708-9cccceec8b56",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "gog_init_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_init_raw",
                    "returnType": 2
                },
                {
                    "id": "b1553cbd-80ef-482d-bd91-2c27c4635694",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_cleanup",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_cleanup",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "11dc3602-236c-48fc-b229-dbca5c60b3ab",
                "c45415fb-28e5-4c21-b54c-2b9a27e64a9f",
                "e71899d7-bf4c-45e9-b17a-0309e9a025ed",
                "b6ee82fc-9ab8-4357-bcd9-26f90e53a75c",
                "9a0d2261-28e1-4367-a103-664281267ba9",
                "cc3f87af-9210-48ea-bc90-abfc3fdcfcb4",
                "a520c2c4-39a6-4317-8cc6-ce2056ba44d3",
                "f08f7c10-0bf3-4bab-b511-0c493e0bc413",
                "c10a0e1a-5e6c-406f-b5a5-eb19bb160fe7",
                "2a15b1ef-f64f-440a-b0be-c724e9ed2fc7",
                "03e821f0-9423-452f-9555-a725caea9f71",
                "a3110c3d-3e90-4ebe-bb62-a28fddd2b0fb",
                "890e859d-563c-4ae9-90c2-38fc4c9536f0",
                "36458535-f6b1-4fac-955c-afcb8feecc2c",
                "fe942b76-bf8e-4ef5-9785-14451715f91c",
                "a202b5e4-c687-4117-a7c0-cf8e3f2ffa94",
                "e0d42467-c50b-4970-88e8-d24b3d3d197b",
                "60d459d5-8062-4ecc-9b01-7dfb26eda80e",
                "19382198-a2c3-4530-b287-f53813670686",
                "4de771c5-e931-4fee-85f0-b568b09445f2",
                "631f1d43-0ad0-416e-a9e1-4e35158243ed",
                "e48bfd01-cc76-4a1f-8aa7-8095a64dd507",
                "21783c32-eecf-4f3e-80c6-331b43577a6e",
                "e60e3248-0bc6-44eb-a138-4ef427b13c52",
                "ab734b10-8644-45c1-b901-086055268f99",
                "eb1a5652-b303-4377-921f-32871ec7e0a7",
                "33d9b288-279f-4719-ba7f-0893b3290613",
                "bfddd76c-230b-4394-b01e-f95a4de0e344",
                "7380e897-11ce-401d-b6e0-2cee94967449",
                "85e681ce-237d-4e82-9317-8e7d3ba48bc4",
                "b1553cbd-80ef-482d-bd91-2c27c4635694"
            ],
            "origname": "extensions\\GOG.gml.dylib",
            "uncompress": false
        },
        {
            "id": "8311d73b-76e9-489a-b244-e84c68b98bba",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "Galaxy.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}