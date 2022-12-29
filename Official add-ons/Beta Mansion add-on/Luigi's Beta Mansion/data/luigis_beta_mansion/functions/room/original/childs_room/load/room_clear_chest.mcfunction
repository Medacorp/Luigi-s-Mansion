data modify storage luigis_mansion:data furniture set value {loot:{contents:{luigis_mansion:{key:[{door:"hallway_3",variant:0b,rotation:[-90.0f,0.0f]}]}}}}
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["childs_room_room_clear_chest"]} run function luigis_beta_mansion:room/original/room_clear_chest_coins
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["childs_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "childs_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["childs_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.childs_room{cleared:1b} positioned 739 20 61 rotated -90 0 run function luigis_beta_mansion:spawn_furniture/room_clear_chest
execute if data storage luigis_mansion:data current_state.current_data.rooms.childs_room{cleared:1b} run setblock 739 20 61 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
