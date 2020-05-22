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
                {
                    "id": "f0e0fdbb-a2ac-79f2-604a-cb7f4e71558d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_create_result_success",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "33f89b24-a68b-0749-c045-6fce117f6c3d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_create_result_error",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "2cd29e4f-cb53-1961-89d9-977707b5712c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_create_result_connection_failure",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "78687533-f7f9-2c7a-604a-16a29ae84495",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_success",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "63f89bf9-fc21-7031-4189-247cebad4ec2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_lobby_does_not_exist",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "2c5acb1a-974d-7f0e-a15e-e0d2d59b4de0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_lobby_is_full",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "49fb196c-9645-a760-d02c-0399e31f1baf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_error",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "f80c47ff-4cdc-e0f0-5842-08c3aa86d163",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_connection_failure",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "d2c2df99-919f-4ad0-f9d3-43f7ce60ff2f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_undefined",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "02e98a24-1e03-9ed3-62ba-28b1fdd6f579",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_user_left",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "b55a07d6-5a5e-7f0f-79dd-d32f37b47cf6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_lobby_closed",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "235315a1-8217-e326-949a-ba0bab5bd704",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_connection_lost",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "87978acc-7f71-a485-173d-16a29cf9dd0a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_entered",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ed167560-ed30-1657-2145-603eb8da3979",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "5b0fe938-b370-2a5d-ed97-79325d15da92",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_disconnected",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "6b1be695-7062-6b6e-f291-1c63f2798f56",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_kicked",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "ab32a5aa-9101-4e1e-b002-807e024a1dba",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_banned",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "0f1f0244-a2ac-790d-bd97-e95d62424492",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_data_retrieve_failure_reason_undefined",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "38432060-c1fc-8fc0-5776-7fc00b5c5f4a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_data_retrieve_failure_reason_lobby_does_not_exist",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f13c8f5e-d457-7f09-f159-978c9f3c1307",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_data_retrieve_failure_reason_connection_failure",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "5a4a5711-808e-5b58-e8c2-cb7f432422f7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_result_success",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "19523106-a2cf-cb81-4501-0de16e95c686",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_result_error",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a45a9e4f-c604-4c39-8379-97fd8b7e4033",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_result_connection_failure",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "d2c2df99-7f71-a4d0-ac86-f84c7e8e449f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "ef345717-7d30-430b-e1ba-78baabf1823d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e08734e5-623c-0873-5c83-3d2b23f6b470",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "48df01ee-943b-c133-d0be-eb11e22c7c5a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_invisible_to_friends",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "65d08b11-cdcd-db42-70f1-54729525e22f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_fcm",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d73a07e6-5dd9-b22a-9539-3ab5d76b9d6a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_star",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "255e755e-04ae-43c2-5d7a-41a726ffa702",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_connectionless",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "489695b3-8d67-a33b-25e9-f7c161d19437",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_fcm_ownership_transition",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "991d5400-8cdc-20fc-9593-265be564f32b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "82e712a2-12c8-f66c-1e89-33e6b4579d7b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "303ea333-9e4e-ad3d-c483-eb60f615a6ff",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "842c702f-60b3-2bde-3a23-74f565b2efb8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ddf2f3af-0f1a-6973-5a64-0dc9cc3df8c3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "6e1a64c6-d82a-2dcc-1f5e-f9d00e7d65a7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_ge",
                    "hidden": false,
                    "value": "2"
                }
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
                    "id": "9c624788-be91-420e-b9fb-abe440d9d1c9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_request",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_stats_request",
                    "returnType": 2
                },
                {
                    "id": "7114eaaf-d5aa-80f4-8f80-63aae699646d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_create",
                    "help": "gog_lobby_create(lobby_type, max_members, joinable, topology_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_create",
                    "returnType": 2
                },
                {
                    "id": "8f87f4f8-15fc-7e6b-003b-4bf313ca6080",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_join",
                    "help": "gog_lobby_join(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_join",
                    "returnType": 2
                },
                {
                    "id": "c6916977-0d06-8ab3-b5b3-dd9af100ef3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_leave",
                    "help": "gog_lobby_leave(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_leave",
                    "returnType": 2
                },
                {
                    "id": "0fe4edf0-6f2a-9b07-6f26-29ae4337a219",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_is_joinable",
                    "help": "gog_lobby_is_joinable(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_is_joinable",
                    "returnType": 2
                },
                {
                    "id": "96869bdd-4c42-9794-604a-43f7c017558b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_set_joinable",
                    "help": "gog_lobby_set_joinable(lobby_id, joinable)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_set_joinable",
                    "returnType": 2
                },
                {
                    "id": "aa686ce2-8d4b-5783-6122-e983478c48ce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_type",
                    "help": "gog_lobby_get_type(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_type",
                    "returnType": 2
                },
                {
                    "id": "ab0c4d4b-2174-0a54-184e-b2fbd14f7584",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_set_type",
                    "help": "gog_lobby_set_type(lobby_id, lobby_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_set_type",
                    "returnType": 2
                },
                {
                    "id": "b4993c67-0320-8887-9046-fd8324ff2e75",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_set_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_lobby_set_data_raw",
                    "returnType": 2
                },
                {
                    "id": "902f6d73-1377-089e-caf2-d229a1f59e6e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_request_data",
                    "help": "gog_lobby_request_data(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_request_data",
                    "returnType": 2
                },
                {
                    "id": "5dd1bbf1-0d06-536a-f9f2-e0a9dd695821",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_delete_data",
                    "help": "gog_lobby_delete_data(lobby_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_delete_data",
                    "returnType": 2
                },
                {
                    "id": "eea011f2-3e3e-93d2-c7e4-4a1eeb1d1d91",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_data",
                    "help": "gog_lobby_get_data(lobby_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_data",
                    "returnType": 1
                },
                {
                    "id": "d0cba89f-72cf-cb8c-93dc-99ae9445c63d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_data_count",
                    "help": "gog_lobby_get_data_count(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_data_count",
                    "returnType": 2
                },
                {
                    "id": "2cd216c7-453d-91ef-eae9-97f76845f126",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_member_data",
                    "help": "gog_lobby_get_member_data(lobby_id, member_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_data",
                    "returnType": 1
                },
                {
                    "id": "23215b41-1129-7acd-f294-fb1dbad33882",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_member_data_count",
                    "help": "gog_lobby_get_member_data_count(lobby_id, member_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_data_count",
                    "returnType": 2
                },
                {
                    "id": "5a2f7e33-6898-fb4d-8a1d-1fcc02192ea5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_delete_member_data",
                    "help": "gog_lobby_delete_member_data(lobby_id, member_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_delete_member_data",
                    "returnType": 2
                },
                {
                    "id": "2f151ce5-e9ed-5978-d851-be5b3f05e7fe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_owner",
                    "help": "gog_lobby_get_owner(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_owner",
                    "returnType": 1
                },
                {
                    "id": "47620c8d-af37-8b03-dd28-336c4628ed6a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_member_count",
                    "help": "gog_lobby_get_member_count(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_count",
                    "returnType": 2
                },
                {
                    "id": "75f603c2-2d96-b6b0-1c41-68272079b654",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_get_member_at",
                    "help": "gog_lobby_get_member_at(lobby_id, index)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_at",
                    "returnType": 1
                },
                {
                    "id": "98c966a5-6b5b-7830-fc2a-f8993619c544",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_send_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_lobby_send_message_raw",
                    "returnType": 2
                },
                {
                    "id": "ebbe9703-a915-6740-9091-f1913737d179",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_send_message_string",
                    "help": "gog_lobby_send_message_string(lobby_id, data_string)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_send_message_string",
                    "returnType": 2
                },
                {
                    "id": "b1c58db3-0dad-7ee3-7424-e71dd89c9ea2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_max_member_count",
                    "help": "gog_lobby_get_max_member_count(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_max_member_count",
                    "returnType": 2
                },
                {
                    "id": "a04df55b-928f-cb0d-91be-bd67f68ab68f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_set_max_member_count",
                    "help": "gog_lobby_set_max_member_count(lobby_id, size)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_set_max_member_count",
                    "returnType": 2
                },
                {
                    "id": "e3f372e8-cb39-7ae9-830e-324916aae016",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_lobby_get_message_raw",
                    "returnType": 2
                },
                {
                    "id": "d91a0c17-4bed-a3dc-9537-a2478f6379ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_get_message_string",
                    "help": "gog_lobby_get_message_string(lobby_id, message_id, sender_id, message_size)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_message_string",
                    "returnType": 1
                },
                {
                    "id": "4b71b5eb-f501-1a55-16ab-bb96fb95a5b8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_near_filter",
                    "help": "gog_lobby_list_add_near_filter(key, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_near_filter",
                    "returnType": 2
                },
                {
                    "id": "6f365d0e-b074-7bd6-9853-6493825248d3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_numeric_filter",
                    "help": "gog_lobby_list_add_numeric_filter(key, value, cmp_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_numeric_filter",
                    "returnType": 2
                },
                {
                    "id": "4c7745e4-0346-3aa7-8516-de10538f171d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_string_filter",
                    "help": "gog_lobby_list_add_string_filter(key, value, cmp_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_string_filter",
                    "returnType": 2
                },
                {
                    "id": "7571c3c6-7616-5e40-13c7-aa3019458e04",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_result_count_filter",
                    "help": "gog_lobby_list_add_result_count_filter(key, max_results)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_result_count_filter",
                    "returnType": 2
                },
                {
                    "id": "f5d6e0dd-cfef-81ea-f667-fc295fbe5957",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_lobby_list_request",
                    "help": "gog_lobby_list_request()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_request",
                    "returnType": 2
                },
                {
                    "id": "a0097f5d-e8ff-1857-324b-1c973b7e8809",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_lobby_list_get_lobby_at",
                    "help": "gog_lobby_list_get_lobby_at(index)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_get_lobby_at",
                    "returnType": 1
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
                },
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
                    "id": "d2a4c488-3989-fc3e-b9c7-5f88506a1da2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_to_string",
                    "help": "gog_to_string(value)->string",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_to_string",
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
                },
                {
                    "id": "96869bdd-2a24-f194-240e-61d5e253558b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_set_data",
                    "help": "gog_lobby_set_data(lobby_id, key, value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_lobby_set_data",
                    "returnType": 2
                },
                {
                    "id": "bf25503b-ba81-d410-3c1f-534f61ac9992",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_send_message",
                    "help": "gog_lobby_send_message(lobby_id, buffer, size)",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_lobby_send_message",
                    "returnType": 2
                },
                {
                    "id": "299f7af6-7353-2cfd-ff55-e4901f08e7aa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 5,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_get_message",
                    "help": "gog_lobby_get_message(lobby_id, message_id, sender_id, buffer, message_size)->bytes_read",
                    "hidden": false,
                    "kind": 2,
                    "name": "gog_lobby_get_message",
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
                {
                    "id": "80b0cb47-fafe-a7b2-0dce-7b1e2a5b34e2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_create_result_success",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "75dc4722-1676-9c33-623e-43240eba1d4a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_create_result_error",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4e18ae4c-f4b5-902b-7063-92b359a286e9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_create_result_connection_failure",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "28a3f080-3139-d436-717d-79e974237d75",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_success",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "dcfd1dab-5b0d-f800-5d9f-9294eb0895d2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_lobby_does_not_exist",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "833d5e6a-6953-8117-9800-17c07f50f9d2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_lobby_is_full",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "502895fa-c209-6972-82eb-f2f8ee15beae",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_error",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "bf08ce6a-dc74-c320-fd89-626ca8e5e183",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_enter_result_connection_failure",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "2cbcc3ad-d491-4b60-a5b5-e4d7191b5cd0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_undefined",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "3080b1ad-0bed-1e63-4592-f80a5ef261a4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_user_left",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "7dce4edc-f63e-d277-4469-2b1884fb3fdf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_lobby_closed",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "0d9384b9-7cbd-2e66-02f1-efa4fb617fd3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_leave_reason_connection_lost",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "7de71ad5-6277-b26a-c60f-549174197721",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_entered",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "97856ead-64b3-ad4e-6e00-763bc9596771",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "7674a205-0690-1864-ceaf-75eeca36f3bc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_disconnected",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "7bddb7be-e607-0f12-fd1d-94e795a4d62f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_kicked",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "aede5b35-596c-6948-b592-1bfc132c5b98",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_member_state_change_banned",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "7d4d4d91-2770-e70a-9ca7-db9ea7154356",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_data_retrieve_failure_reason_undefined",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "ed756cbd-2fbf-f8e3-d583-db2887e004ee",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_data_retrieve_failure_reason_lobby_does_not_exist",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "b2caa6b6-e7b5-b200-601c-99217be52c14",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_data_retrieve_failure_reason_connection_failure",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "1c388a72-f6b8-8fc6-9158-23c4a0e1a119",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_result_success",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "89f68d7f-f8eb-2bf7-fea9-4c78c9b5cd5a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_result_error",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "1749d136-93ae-b4ab-4e2d-94c6ae14f736",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_result_connection_failure",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "9c089a2e-be02-5a8c-0a66-cea86585acd6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "dfff4c8d-3a56-a1e4-840b-8c5391ab5796",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "21ec2d8b-2dea-2f75-aeda-4c3d30f55066",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a458dd30-3e77-6119-a08b-cce2deb85131",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_type_invisible_to_friends",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "c42d240a-7857-0581-4b50-621f9fd80494",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_fcm",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "65964c09-e8f1-ca0d-3483-e7f4f87a4f45",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_star",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "14182e77-8a81-b59b-22d0-b497f7b72171",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_connectionless",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "846f48c8-a457-6ee4-b9e4-8bee10fa75db",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_topology_type_fcm_ownership_transition",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "43b8d80d-e8a4-0c8d-8a48-f7e33aaba0da",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "cf8cd60b-8c75-da64-796b-fcc0308ecceb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "564e6b4b-e6cf-1dd7-6ce3-dcd09caa3024",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "0deb8d1d-e4bd-9686-de52-4f1d77eed027",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "9c441e27-3e97-7748-c046-6aa65de135d7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "113d7d9c-fe57-238e-fae7-24a3f6b6e41c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gog_lobby_list_cmp_type_ge",
                    "hidden": false,
                    "value": "2"
                }
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
                    "id": "a520c2c4-39a6-4317-8cc6-ce2056ba44d3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_stats_request",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_stats_request",
                    "returnType": 2
                },
                {
                    "id": "eb13a2c9-3aba-f132-3901-24c16b5d668d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_create",
                    "help": "gog_lobby_create(lobby_type, max_members, joinable, topology_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_create",
                    "returnType": 2
                },
                {
                    "id": "57dd1563-081e-a546-cc7b-28c5d41790a2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_join",
                    "help": "gog_lobby_join(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_join",
                    "returnType": 2
                },
                {
                    "id": "dcdee173-e642-2c16-03d4-b96fddcb4f78",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_leave",
                    "help": "gog_lobby_leave(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_leave",
                    "returnType": 2
                },
                {
                    "id": "b98282ba-7d04-4990-c2d7-de6629845959",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_is_joinable",
                    "help": "gog_lobby_is_joinable(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_is_joinable",
                    "returnType": 2
                },
                {
                    "id": "286924de-2d67-d444-93ca-bb00b8a9503f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_set_joinable",
                    "help": "gog_lobby_set_joinable(lobby_id, joinable)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_set_joinable",
                    "returnType": 2
                },
                {
                    "id": "5a667c93-57a5-8003-0977-70e02cfeab9b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_type",
                    "help": "gog_lobby_get_type(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_type",
                    "returnType": 2
                },
                {
                    "id": "2007756e-3782-8e85-d7cf-52d1d9087996",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_set_type",
                    "help": "gog_lobby_set_type(lobby_id, lobby_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_set_type",
                    "returnType": 2
                },
                {
                    "id": "4242953c-b676-e2c7-a82c-1f2f46679cda",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_set_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_lobby_set_data_raw",
                    "returnType": 2
                },
                {
                    "id": "475a832f-7fbd-4a05-c610-d829327521dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_request_data",
                    "help": "gog_lobby_request_data(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_request_data",
                    "returnType": 2
                },
                {
                    "id": "c47ef875-1dc0-a302-54e8-c39d4fabe85e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_delete_data",
                    "help": "gog_lobby_delete_data(lobby_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_delete_data",
                    "returnType": 2
                },
                {
                    "id": "2d5f05fe-324d-6f93-d9b2-310eeb53c0c7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_data",
                    "help": "gog_lobby_get_data(lobby_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_data",
                    "returnType": 1
                },
                {
                    "id": "74f62e36-101f-e1f5-af35-1c44c5a38aef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_data_count",
                    "help": "gog_lobby_get_data_count(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_data_count",
                    "returnType": 2
                },
                {
                    "id": "a2ac6d58-ad71-b427-7a6a-7409e06445d7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_member_data",
                    "help": "gog_lobby_get_member_data(lobby_id, member_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_data",
                    "returnType": 1
                },
                {
                    "id": "baad2a50-23c1-a3ce-2bbd-63ad0966ce7a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_member_data_count",
                    "help": "gog_lobby_get_member_data_count(lobby_id, member_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_data_count",
                    "returnType": 2
                },
                {
                    "id": "2f9fa758-1b08-479a-ea9c-643646952dc5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_delete_member_data",
                    "help": "gog_lobby_delete_member_data(lobby_id, member_id, key)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_delete_member_data",
                    "returnType": 2
                },
                {
                    "id": "ba52972b-649b-0746-9e7f-76a05c7ee568",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_owner",
                    "help": "gog_lobby_get_owner(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_owner",
                    "returnType": 1
                },
                {
                    "id": "5f0e9863-33f1-7799-9bf6-1745acf6eb9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_member_count",
                    "help": "gog_lobby_get_member_count(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_count",
                    "returnType": 2
                },
                {
                    "id": "38b19f75-7946-b496-5877-b2662f40ad63",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_get_member_at",
                    "help": "gog_lobby_get_member_at(lobby_id, index)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_member_at",
                    "returnType": 1
                },
                {
                    "id": "c52c5685-f158-1cb0-b4cd-c4c80d79ef2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_send_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_lobby_send_message_raw",
                    "returnType": 2
                },
                {
                    "id": "96a1193a-d78f-6a57-cea0-0d3b9a9e1513",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_send_message_string",
                    "help": "gog_lobby_send_message_string(lobby_id, data_string)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_send_message_string",
                    "returnType": 2
                },
                {
                    "id": "9ac53c43-c852-ec83-6b3c-cfda68685630",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "gog_lobby_get_max_member_count",
                    "help": "gog_lobby_get_max_member_count(lobby_id)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_max_member_count",
                    "returnType": 2
                },
                {
                    "id": "dc5dca54-ade2-50de-17d6-758f2c042e42",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_set_max_member_count",
                    "help": "gog_lobby_set_max_member_count(lobby_id, size)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_set_max_member_count",
                    "returnType": 2
                },
                {
                    "id": "a88a0f52-6616-708b-09b5-ac6e30b9899f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "gog_lobby_get_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "gog_lobby_get_message_raw",
                    "returnType": 2
                },
                {
                    "id": "a3ae37d1-ee5a-d928-0489-293740e81e7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_get_message_string",
                    "help": "gog_lobby_get_message_string(lobby_id, message_id, sender_id, message_size)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_get_message_string",
                    "returnType": 1
                },
                {
                    "id": "76c80d9b-e246-3ce5-7bf3-e83a0be96994",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_near_filter",
                    "help": "gog_lobby_list_add_near_filter(key, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_near_filter",
                    "returnType": 2
                },
                {
                    "id": "6f505d84-f94a-9ee8-060a-56d30d0c0d34",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_numeric_filter",
                    "help": "gog_lobby_list_add_numeric_filter(key, value, cmp_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_numeric_filter",
                    "returnType": 2
                },
                {
                    "id": "6a8a816f-90ef-7a62-8a6d-dca17d828282",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_string_filter",
                    "help": "gog_lobby_list_add_string_filter(key, value, cmp_type)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_string_filter",
                    "returnType": 2
                },
                {
                    "id": "e7be9d32-dc81-1ccd-9efb-b95de452c92a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "gog_lobby_list_add_result_count_filter",
                    "help": "gog_lobby_list_add_result_count_filter(key, max_results)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_add_result_count_filter",
                    "returnType": 2
                },
                {
                    "id": "eccd6205-b78a-1969-57c1-efb3e915b900",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "gog_lobby_list_request",
                    "help": "gog_lobby_list_request()",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_request",
                    "returnType": 2
                },
                {
                    "id": "bf46ddd9-01f6-8208-1127-94568ec3774d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "gog_lobby_list_get_lobby_at",
                    "help": "gog_lobby_list_get_lobby_at(index)",
                    "hidden": false,
                    "kind": 1,
                    "name": "gog_lobby_list_get_lobby_at",
                    "returnType": 1
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
                },
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