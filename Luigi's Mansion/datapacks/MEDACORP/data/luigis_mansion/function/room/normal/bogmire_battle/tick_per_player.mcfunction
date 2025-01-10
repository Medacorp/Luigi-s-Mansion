execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire{health:0} unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"bogmire_opening"}}] run function luigis_mansion:other/music/set/bogmire_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire{health:0} run function luigis_mansion:other/music/set/area_clear
tag @s add seen_room_name
scoreboard players set @s LastFloor 0

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/normal/graveyard/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/bogmire_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} run function luigis_mansion:room/normal/bogmire_battle/clear_graveyard