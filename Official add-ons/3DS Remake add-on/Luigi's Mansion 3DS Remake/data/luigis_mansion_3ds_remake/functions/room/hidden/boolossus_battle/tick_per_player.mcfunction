execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{health:0} run function luigis_mansion:other/music/set/boolossus_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{health:0} run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name
scoreboard players set @s LastFloor 2

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion_3ds_remake:room/hidden/balcony_2/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion_3ds_remake:room/hidden/balcony_2/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} run function luigis_mansion_3ds_remake:room/hidden/boolossus_battle/clear_balcony_2