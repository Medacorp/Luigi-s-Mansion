execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey{health:0} unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"chauncey_opening"}}] run function luigis_mansion:other/music/set/chauncey_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey{health:0} unless score #chauncey_battle Wave matches 1.. unless data storage luigis_mansion:data dialogs[{room:73}] run function luigis_mansion:room/normal/chauncey_battle/clear_nursery
tag @s add seen_room_name
scoreboard players set @s LastFloor 1

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/normal/nursery/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/chauncey_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} run function luigis_mansion:room/normal/chauncey_battle/clear_nursery