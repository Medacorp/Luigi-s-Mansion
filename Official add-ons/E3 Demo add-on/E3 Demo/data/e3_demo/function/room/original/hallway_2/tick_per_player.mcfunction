execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:1b} run function e3_demo:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:1b} run function e3_demo:other/music/set/dark_room
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{seen:0b} unless entity @s[tag=spectator] run function e3_demo:room/original/hallway_2/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/hallway_2/wall_warp

tag @s add already_ticked