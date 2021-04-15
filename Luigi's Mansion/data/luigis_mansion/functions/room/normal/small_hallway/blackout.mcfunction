execute positioned 728 20 52 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 724 20 61 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 728 20 70 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 728 20 58 run function luigis_mansion:spawn_entities/vacuumable/purple_mouse
execute positioned 728 20 64 run function luigis_mansion:spawn_entities/vacuumable/purple_mouse
execute if predicate luigis_mansion:hallway_ghost_chance positioned 726 23 52 run function luigis_mansion:spawn_entities/new_ghost/purple_bomber
execute if predicate luigis_mansion:hallway_ghost_chance positioned 726 23 61 run function luigis_mansion:spawn_entities/new_ghost/ceiling_surprise
execute if predicate luigis_mansion:hallway_ghost_chance positioned 726 23 70 run function luigis_mansion:spawn_entities/new_ghost/purple_bomber
scoreboard players set #small_hallway Wave 100