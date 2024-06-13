execute store result score #temp Time if entity @e[tag=ghost,scores={Room=63},tag=!optional_ghost]
execute if score #roof Wave matches 9 if score #temp Time matches 0 run function 3ds_remake:room/hidden/roof/clear
execute if score #roof Wave matches 8 if score #temp Time matches ..2 run function 3ds_remake:room/hidden/roof/wave_9
execute if score #roof Wave matches 7 if score #temp Time matches ..2 run function 3ds_remake:room/hidden/roof/wave_8
execute if score #roof Wave matches 6 if score #temp Time matches ..2 run function 3ds_remake:room/hidden/roof/wave_7
execute if score #roof Wave matches 5 if score #temp Time matches 0 run function 3ds_remake:room/hidden/roof/wave_6
execute if score #roof Wave matches 4 if score #temp Time matches ..1 run function 3ds_remake:room/hidden/roof/wave_5
execute if score #roof Wave matches 3 if score #temp Time matches ..1 run function 3ds_remake:room/hidden/roof/wave_4
execute if score #roof Wave matches 2 if score #temp Time matches ..1 run function 3ds_remake:room/hidden/roof/wave_3
execute if score #roof Wave matches 1 if score #temp Time matches 0 run function 3ds_remake:room/hidden/roof/wave_2
execute unless data storage luigis_mansion:data current_state.current_data.rooms.roof{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless score #roof Wave matches 1..99 run function 3ds_remake:room/hidden/roof/wave_1
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless score #roof Wave matches 1.. run function 3ds_remake:room/hidden/roof/blackout
scoreboard players reset #temp Time