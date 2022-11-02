data modify storage luigis_mansion:data furniture set value {searchable:["hand"],loot:{contents:{luigis_mansion:{key:[{door:"billiards_room",variant:0b,rotation:[135.0f,0.0f]}]}}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_2_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "bathroom_2_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_2_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.bathroom_2{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 656 20 -3 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_blue
execute if data storage luigis_mansion:data current_state.current_data.rooms.bathroom_2{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 656 20 -3 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
