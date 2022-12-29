data modify storage luigis_mansion:data furniture set value {searchable:["hand"]}
execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["conservatory"]} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"conservatory",variant:0b,rotation:[120.0f,0.0f]}]}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "butlers_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 747 11 65 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_blue
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 747 11 65 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
