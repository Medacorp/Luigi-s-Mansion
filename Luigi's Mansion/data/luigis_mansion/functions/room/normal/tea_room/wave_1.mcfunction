tag @e[tag=haunted_plate] add enabled
execute positioned 642 20 -33 run function luigis_mansion:spawn_entities/new_ghost/grabbing_ghost
execute positioned 642 20 -68 run function luigis_mansion:spawn_entities/new_ghost/grabbing_ghost
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data.money_spawned{tea_room_random_gold_mouse:1b} positioned 647 20 -37 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #tea_room Wave 1