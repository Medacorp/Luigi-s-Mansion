execute store result score #temp Time if entity @e[tag=ghost,scores={Room=29},tag=!optional_ghost]
execute if score #graveyard Wave matches 4 if entity @a[tag=!spectator,x=651.5,y=103,z=47.5,distance=..4] run function 3ds_remake:room/hidden/graveyard/wave_5
execute if score #graveyard Wave matches 4..5 run particle minecraft:dust{color:8355839,scale:1f} 649 105 47 0.5 0.5 0.5 0 4
execute if score #graveyard Wave matches 3 if score #temp Time matches 0 run function 3ds_remake:room/hidden/graveyard/wave_4
execute if score #graveyard Wave matches 2 if score #temp Time matches ..1 run function 3ds_remake:room/hidden/graveyard/wave_3
execute if score #graveyard Wave matches 1 if score #temp Time matches 0 run function 3ds_remake:room/hidden/graveyard/wave_2
execute unless data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{bogmire_ready:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless score #graveyard Wave matches 1..99 run function 3ds_remake:room/hidden/graveyard/wave_1
execute unless data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{bogmire_ready:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless score #graveyard Wave matches 1..99 run function 3ds_remake:room/hidden/graveyard/wave_4
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless score #graveyard Wave matches 1.. run function 3ds_remake:room/hidden/graveyard/blackout
scoreboard players reset #temp Time