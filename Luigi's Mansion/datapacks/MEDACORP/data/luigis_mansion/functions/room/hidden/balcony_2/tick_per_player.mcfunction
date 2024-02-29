function luigis_mansion:other/music/set/outside
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.balcony_2"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion:room/hidden/balcony_2/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/balcony_2/wall_warp

tag @s add already_ticked

execute if entity @s[x=681.5,y=120,z=-13.0,tag=!spectator,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_18"]} unless entity @a[scores={GBHCall=1..},limit=1] run function luigis_mansion:room/hidden/balcony_2/clear_blockade

execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},limit=1] run scoreboard players set @s ForceRadar 1
