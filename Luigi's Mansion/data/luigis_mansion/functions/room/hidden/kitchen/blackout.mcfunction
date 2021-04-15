tag @e[tag=haunted_frying_pan] add enabled
execute positioned 689 102 -23 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 689 102 -36 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 689 102 -29 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 697 102 -36 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 697 102 -26 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 697 102 -16 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 690 102 -16 run function luigis_mansion:spawn_entities/new_ghost/purple_puncher
execute positioned 695 102 -16 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 695 102 -35 run function luigis_mansion:spawn_entities/new_ghost/purple_puncher
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_gold_mouse:1b} positioned 690 102 -40 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #kitchen Wave 100