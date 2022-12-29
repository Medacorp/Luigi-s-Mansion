data modify storage luigis_mansion:data furniture set value {searchable:["hand"]}
execute unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_shoe:1b} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{mario_item:[{variant:"shoe",rotation:[160.0f,0.0f]}]}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "billiards_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.billiards_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 682 11 82 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_red
execute if data storage luigis_mansion:data current_state.current_data.rooms.billiards_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 682 11 82 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
