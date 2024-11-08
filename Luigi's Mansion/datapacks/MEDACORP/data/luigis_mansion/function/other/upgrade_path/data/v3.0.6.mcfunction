execute unless data storage luigis_mansion:data update_data{data_version:4} run function luigis_mansion:other/upgrade_path/data/v3.0
data modify storage luigis_mansion:data update_data.data_version set value 5
execute store result score #temp Steps run data get storage luigis_mansion:data update_data.boos
execute unless data storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run scoreboard players add #temp Steps 15
execute store result storage luigis_mansion:data update_data.boos int -1 run scoreboard players remove #temp Steps 50
scoreboard players reset #temp Steps