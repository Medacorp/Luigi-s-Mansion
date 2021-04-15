function luigis_mansion:room/hidden/telephone_room/add_blockade
execute positioned 710 120 20 run function luigis_mansion:spawn_entities/new_ghost/forced_spawn/purple_puncher
execute positioned 714 120 20 run function luigis_mansion:spawn_entities/new_ghost/forced_spawn/purple_puncher
execute positioned 705 120 12 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 705 120 3 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 710 120 -5 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
execute positioned 714 120 -5 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
scoreboard players set #telephone_room Wave 100