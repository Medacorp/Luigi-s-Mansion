execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.lavatory.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["lavatory_room_clear_chest"]} run function luigis_beta_mansion:room/original/room_clear_chest_coins
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["lavatory_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "lavatory_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["lavatory_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.lavatory{cleared:1b} positioned 664 12 44 rotated -90 0 run function luigis_beta_mansion:spawn_furniture/room_clear_chest
execute if data storage luigis_mansion:data current_state.current_data.rooms.lavatory{cleared:1b} run setblock 664 12 44 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
