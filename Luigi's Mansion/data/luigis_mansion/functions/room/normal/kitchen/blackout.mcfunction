tag @e[tag=haunted_frying_pan] add enabled
execute positioned 702 11 66 run function luigis_mansion:spawn_entities/new_ghost/purple_puncher
execute positioned 707 11 66 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 707 11 85 run function luigis_mansion:spawn_entities/new_ghost/purple_puncher
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data.money_spawned{kitchen_gold_mouse:1b} positioned 702 11 90 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #kitchen Wave 100