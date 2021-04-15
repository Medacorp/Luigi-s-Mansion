function luigis_mansion:room/hidden/anteroom/add_blockade
execute positioned 675 111 8.0 run function luigis_mansion:spawn_entities/new_ghost/blue_twirler
execute positioned 681 111 8.0 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 681 111 12 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 673 111 3 run function luigis_mansion:spawn_entities/new_ghost/blue_mouse
execute positioned 673 111 8.0 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 673 111 12 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
scoreboard players set #anteroom Wave 1