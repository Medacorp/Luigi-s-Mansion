execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo{health:0} unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"king_boo_opening"}}] run function luigis_mansion:other/music/set/king_boo_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo{health:0} run function luigis_mansion:other/music/set/area_clear
tag @s add seen_room_name
scoreboard players set @s LastFloor 3

execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/secret_altar/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/king_boo_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:room/hidden/king_boo_battle/clear_secret_altar