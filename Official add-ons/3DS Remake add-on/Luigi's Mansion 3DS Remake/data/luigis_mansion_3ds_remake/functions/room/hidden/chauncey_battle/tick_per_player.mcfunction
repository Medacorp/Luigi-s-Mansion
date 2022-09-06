execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{health:0} run function luigis_mansion:other/music/set/chauncey_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{health:0} run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name
scoreboard players set @s LastFloor 1

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{seen:0b} run function luigis_mansion_3ds_remake:room/hidden/nursery/set_seen
execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} run function luigis_mansion_3ds_remake:room/hidden/chauncey_battle/clear_nursery