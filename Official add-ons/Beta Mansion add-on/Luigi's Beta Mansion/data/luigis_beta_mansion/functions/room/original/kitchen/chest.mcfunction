execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.kitchen.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_chest:1b} run function luigis_beta_mansion:room/original/chest_coins
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {kitchen_chest:1b}