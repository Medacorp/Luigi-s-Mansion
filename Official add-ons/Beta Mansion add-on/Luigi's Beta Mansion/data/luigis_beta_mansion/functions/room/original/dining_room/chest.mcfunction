execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.dining_room.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{dining_room_chest:1b} run function luigis_beta_mansion:room/original/chest_coins
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {dining_room_chest:1b}