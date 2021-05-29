execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{health:0} unless entity @s[scores={MusicType=15}] unless entity @s[scores={MusicType=32}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/chauncey_battle
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{health:0} unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{seen:0b} run function luigis_mansion:room/normal/nursery/set_seen
execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} run function luigis_mansion:room/normal/chauncey_battle/clear_nursery