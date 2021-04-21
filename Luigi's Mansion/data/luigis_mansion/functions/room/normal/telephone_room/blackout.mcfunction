function luigis_mansion:room/normal/telephone_room/add_blockade
execute positioned 747 29 8 run function luigis_mansion:spawn_entities/new_ghost/forced_spawn/purple_puncher
execute positioned 742 29 18.0 run function luigis_mansion:spawn_entities/new_ghost/gold_ghost
execute positioned 746 29 27 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
scoreboard players set #telephone_room Wave 100