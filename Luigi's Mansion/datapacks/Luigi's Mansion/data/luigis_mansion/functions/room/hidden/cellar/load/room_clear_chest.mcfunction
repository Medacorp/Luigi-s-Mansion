data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"clockwork_room",variant:0b,rotation:[150.0f,0.0f]}]}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "cellar_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.cellar{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 742 2 74 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_blue
execute if data storage luigis_mansion:data current_state.current_data.rooms.cellar{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 742 2 74 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
