data modify storage luigis_mansion:data furniture set value {searchable:["hand"]}
execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["safari_room"]} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"safari_room",variant:0b,rotation:[-180.0f,0.0f]}]}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["fortune_tellers_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "fortune_tellers_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["fortune_tellers_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.fortune_tellers_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 740 12 -23 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_blue
execute if data storage luigis_mansion:data current_state.current_data.rooms.fortune_tellers_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 740 12 -23 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
