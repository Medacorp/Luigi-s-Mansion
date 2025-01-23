execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire{health:0} unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"bogmire_opening"}}] run function luigis_mansion:other/music/set/bogmire_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire{health:0} unless score #bogmire_battle Wave matches 1.. unless data storage luigis_mansion:data dialogs[{room:74}] run function 3ds_remake:room/hidden/bogmire_battle/clear_graveyard
tag @s add seen_room_name
scoreboard players set @s LastFloor 0

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/graveyard/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/bogmire_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} run function 3ds_remake:room/hidden/bogmire_battle/clear_graveyard