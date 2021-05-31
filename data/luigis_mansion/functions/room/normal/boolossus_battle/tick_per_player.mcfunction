execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{health:0} unless entity @s[scores={MusicType=17}] unless entity @s[scores={MusicType=34}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/boolossus_battle
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{health:0} unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name
scoreboard players set @s LastFloor 2

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} run function luigis_mansion:room/normal/balcony_2/set_seen
execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} run function luigis_mansion:room/normal/boolossus_battle/clear_balcony_2