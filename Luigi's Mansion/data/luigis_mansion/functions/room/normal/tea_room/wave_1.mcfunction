tag @e[tag=haunted_plate] add enabled
execute positioned 658 111 -13 run function luigis_mansion:spawn_entities/new_ghost/grabbing_ghost
execute positioned 658 111 -38 run function luigis_mansion:spawn_entities/new_ghost/grabbing_ghost
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data.money_spawned{tea_room_random_gold_mouse:1b} positioned 663 111 -17 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #tea_room Wave 1