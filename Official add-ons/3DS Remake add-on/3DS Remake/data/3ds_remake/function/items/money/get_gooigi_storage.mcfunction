execute unless data storage luigis_mansion:data current_state.current_data.gooigi_stats run data modify storage luigis_mansion:data current_state.current_data.gooigi_stats set value {ghosts:0,money:0}
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.gooigi_stats.money
$scoreboard players add #temp Time $(value)
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.current_data.gooigi_stats.money int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time