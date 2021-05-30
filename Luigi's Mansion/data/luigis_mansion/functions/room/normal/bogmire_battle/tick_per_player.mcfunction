execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire{health:0} unless entity @s[scores={MusicType=16}] unless entity @s[scores={MusicType=33}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/bogmire_battle
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire{health:0} unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{seen:0b} run function luigis_mansion:room/normal/graveyard/set_seen
execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} run function luigis_mansion:room/normal/bogmire_battle/clear_graveyard