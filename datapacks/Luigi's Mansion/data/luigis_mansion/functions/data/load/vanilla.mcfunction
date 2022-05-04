data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data saved_state.mansion_data
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data saved_state.ghosts_caught
data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data saved_state.money_grabbed
execute if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:room/load_mansion_data
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set @a Health 100
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run gamemode adventure @a[gamemode=spectator]
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} as @a unless entity @s[scores={Room=-4..-1}] run function luigis_mansion:room/underground_lab/warp_to
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run function #luigis_mansion:mansion_reset
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set #mansion_type Selected -1
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set #mansion_data_index Selected -1
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set #previous_mansion_index Selected -1