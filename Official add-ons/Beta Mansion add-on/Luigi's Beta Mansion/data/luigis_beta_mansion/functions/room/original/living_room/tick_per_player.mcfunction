execute if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:1b} run function luigis_beta_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:1b} run function luigis_beta_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_beta_mansion:location.living_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.living_room{seen:0b} run function luigis_beta_mansion:room/original/living_room/set_seen

execute unless data storage luigis_mansion:data {found_e_gadd:1b} unless entity @a[tag=meet_e_gadd,limit=1] run tag @s[tag=!pull_open_door,tag=!push_open_door] add meet_e_gadd