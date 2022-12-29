data modify storage luigis_mansion:data furniture set value {searchable:["hand"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["telephone_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"telephone_room_room_clear_chest",contents:{luigis_mansion:{gold_coin:20,bill:20,gold_bar:1}}}
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["telephone_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.telephone_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 742 29 4 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/green
execute if data storage luigis_mansion:data current_state.current_data.rooms.telephone_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 742 29 4 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
