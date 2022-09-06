execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.lavatory.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["lavatory_chest"]} run function luigis_beta_mansion:room/original/chest_coins
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["lavatory_chest"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "lavatory_chest"