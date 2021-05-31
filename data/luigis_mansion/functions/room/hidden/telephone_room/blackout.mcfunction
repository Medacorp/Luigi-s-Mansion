function luigis_mansion:room/hidden/telephone_room/add_blockade
execute positioned 748 29 10 run function luigis_mansion:spawn_entities/ghost/forced_spawn/purple_puncher
execute positioned 752 29 10 run function luigis_mansion:spawn_entities/ghost/forced_spawn/purple_puncher
execute positioned 743 29 2 run function luigis_mansion:spawn_entities/ghost/gold_ghost
execute positioned 743 29 -7 run function luigis_mansion:spawn_entities/ghost/gold_ghost
execute positioned 748 29 -15 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute positioned 752 29 -15 run function luigis_mansion:spawn_entities/ghost/blue_twirler
scoreboard players set #telephone_room Wave 100