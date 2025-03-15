function luigis_mansion:other/music/set/exterior
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.balcony_2"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/balcony_2/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/balcony_2/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/player/run_command_as_model {command:'execute if entity @s[x=681.5,y=120,z=28.0,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_18"]} run function 3ds_remake:room/hidden/balcony_2/clear_blockade'}

execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},limit=1] run function luigis_mansion:items/game_boy_horror/turn_radar_to_forced_value {value:"on_top"}
