tag @e[tag=portrificationizing_ghost] add remove_from_existence
tag @e[tag=e_gadd,scores={Room=-3}] remove cannot_be_removed
tag @e[tag=mario,scores={Room=-3}] remove cannot_be_removed
execute if data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"underground_lab"}}] run data modify storage luigis_mansion:data dialog set from storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"underground_lab"}}]
data modify storage luigis_mansion:data dialogs set value []
execute if data storage luigis_mansion:data dialog run data modify storage luigis_mansion:data dialogs append from storage luigis_mansion:data dialog
data remove storage luigis_mansion:data dialog

data modify storage luigis_mansion:data macro.index set from storage luigis_mansion:data current_state.current_data.data_index
function luigis_mansion:reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data saved_state.mansion_data
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data saved_state.ghosts_caught
data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data saved_state.money_grabbed
function luigis_mansion:data/load_mansion with storage luigis_mansion:data macro
execute unless data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run function luigis_mansion:forceload_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} as @a unless entity @s[scores={Room=-4..-1}] run function luigis_mansion:room/underground_lab/warp_to
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set @a Health 100
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run gamemode adventure @a[gamemode=spectator]
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty