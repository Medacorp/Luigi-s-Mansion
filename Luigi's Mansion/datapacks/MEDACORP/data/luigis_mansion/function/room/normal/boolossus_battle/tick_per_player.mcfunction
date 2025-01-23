execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"boolossus_opening"}}] run function luigis_mansion:other/music/set/boolossus_battle_skip_intro
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} unless score #boolossus_battle Wave matches 1.. unless data storage luigis_mansion:data dialogs[{room:75}] run function luigis_mansion:room/normal/boolossus_battle/clear_balcony_2
tag @s add seen_room_name
scoreboard players set @s LastFloor 2

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/normal/balcony_2/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/boolossus_battle/wall_warp

tag @s add already_ticked
execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} run function luigis_mansion:room/normal/boolossus_battle/clear_balcony_2