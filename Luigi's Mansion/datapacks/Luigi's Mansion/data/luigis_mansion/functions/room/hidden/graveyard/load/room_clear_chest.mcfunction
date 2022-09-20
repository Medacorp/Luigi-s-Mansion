data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"courtyard",variant:2b,rotation:[-130.0f,0.0f]}]}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["graveyard_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "graveyard_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["graveyard_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} positioned 656 102 -31 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/gold
execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run setblock 656 102 -31 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
