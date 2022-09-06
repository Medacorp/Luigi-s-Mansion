execute store result score #temp Money run data get storage luigis_mansion:data current_state.mansion_data[-1].data_index
execute if score #temp Money = #mansion_data_index Selected run scoreboard players set #temp ActionTime 1
execute unless score #temp ActionTime matches 1 run data modify storage luigis_mansion:data current_state.new_mansion_data append from storage luigis_mansion:data current_state.mansion_data[-1]
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion:data current_state.current_data set from storage luigis_mansion:data current_state.mansion_data[-1]
data remove storage luigis_mansion:data current_state.mansion_data[-1]
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion:data current_state.new_mansion_data append from storage luigis_mansion:data current_state.mansion_data[]
execute unless score #temp ActionTime matches 1 if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:room/load_mansion_index