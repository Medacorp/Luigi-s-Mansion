execute store result score #temp Time if entity @e[tag=ghost,scores={Room=32},tag=!optional_ghost]
execute if score #rec_room Wave matches 1 if score #temp Time matches 0 run function luigis_mansion:room/normal/rec_room/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.rec_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless score #rec_room Wave matches 1..99 run function luigis_mansion:room/normal/rec_room/wave_1
execute if score #rec_room Wave matches 101 if score #temp Time matches ..2 run function luigis_mansion:room/normal/rec_room/blackout_3
execute if score #rec_room Wave matches 100 if score #temp Time matches ..2 run function luigis_mansion:room/normal/rec_room/blackout_2
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless score #rec_room Wave matches 1.. run function luigis_mansion:room/normal/rec_room/blackout_1
scoreboard players reset #temp Time