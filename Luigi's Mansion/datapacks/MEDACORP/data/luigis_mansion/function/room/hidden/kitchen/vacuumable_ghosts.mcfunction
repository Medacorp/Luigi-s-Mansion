data modify storage luigis_mansion:data entity set value {room:27,paths:"luigis_mansion:room/hidden/kitchen/blue_mouse_path"}
execute positioned 701 11 -58 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:27,paths:"luigis_mansion:room/hidden/kitchen/blue_mouse_path"}
execute positioned 701 11 -71 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:27,paths:"luigis_mansion:room/hidden/kitchen/blue_mouse_path"}
execute positioned 701 11 -64 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:27,paths:"luigis_mansion:room/hidden/kitchen/blue_mouse_path"}
execute positioned 709 11 -71 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:27,paths:"luigis_mansion:room/hidden/kitchen/blue_mouse_path"}
execute positioned 709 11 -61 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:27,paths:"luigis_mansion:room/hidden/kitchen/blue_mouse_path"}
execute positioned 709 11 -51 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_gold_mouse"]} run data modify storage luigis_mansion:data entity set value {room:27,spawn:1b,loot:{name:"kitchen_gold_mouse"},paths:[{force_move:1b,steps:[{wait:20,position:[702.5d,11.0d,-74.5d]},{position:[702.5d,11.0d,-70.5d]},{position:[708.5d,11.0d,-65.5d]},{position:[702.5d,11.0d,-60.5d]},{position:[708.5d,11.0d,-55.5d]},{position:[702.5d,11.0d,-51.5d]},{position:[699.5d,11.0d,-51.5d]}]}]}
execute if data storage luigis_mansion:data entity.loot run function luigis_mansion:entities/gold_mouse/give_money/silver_diamond
execute if data storage luigis_mansion:data entity.loot positioned 702 11 -75 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #kitchen Vacuumables 1