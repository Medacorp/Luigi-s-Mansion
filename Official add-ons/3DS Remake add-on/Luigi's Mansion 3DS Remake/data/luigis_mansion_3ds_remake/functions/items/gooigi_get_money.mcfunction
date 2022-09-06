execute unless data storage luigis_mansion:data current_state.current_data.gooigi_stats run data modify storage luigis_mansion:data current_state.current_data.gooigi_stats set value {ghosts:0,money:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.gooigi_stats.money
scoreboard players operation #temp ActionTime += #temp Time
execute if score #temp ActionTime matches ..0 run scoreboard players set #temp ActionTime 2147483647
execute store result storage luigis_mansion:data current_state.current_data.gooigi_stats.money int 1 run scoreboard players get #temp ActionTime
scoreboard players reset #temp ActionTime