data modify storage luigis_mansion:data furniture set value {searchable:["hand"],loot:{contents:{luigis_mansion:{mario_item:[{variant:"glove",rotation:[20.0f,0.0f]}]}}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["courtyard_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "courtyard_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["courtyard_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.courtyard{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 650 102 -8 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/red
execute if data storage luigis_mansion:data current_state.current_data.rooms.courtyard{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 650 102 -8 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
