tag @e[tag=haunted_plate] add enabled
execute positioned 656 111 45 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 656 111 36 run function luigis_mansion:spawn_entities/new_ghost/flash
execute positioned 658 111 28 run function luigis_mansion:spawn_entities/new_ghost/red_grabbing_ghost
execute positioned 658 111 53 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data.money_spawned{tea_room_random_gold_mouse:1b} positioned 663 111 32 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #tea_room Wave 1