execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo{health:0} unless entity @s[scores={MusicGroup=0,MusicType=18}] unless entity @s[scores={MusicGroup=0,MusicType=35}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/king_boo_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo{health:0} unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/area_boss_defeated
tag @s add seen_room_name
scoreboard players set @s LastFloor 3

execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{seen:0b} run function luigis_mansion:room/normal/secret_altar/set_seen
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:room/normal/king_boo_battle/clear_secret_altar