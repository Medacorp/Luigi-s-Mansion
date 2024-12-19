execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey{health:0} run function luigis_mansion:other/music/set/chauncey_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey{health:0} run function luigis_mansion:other/music/set/area_clear
tag @s add seen_room_name
scoreboard players set @s LastFloor 1

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/hidden/nursery/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/chauncey_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} run function luigis_mansion:room/hidden/chauncey_battle/clear_nursery