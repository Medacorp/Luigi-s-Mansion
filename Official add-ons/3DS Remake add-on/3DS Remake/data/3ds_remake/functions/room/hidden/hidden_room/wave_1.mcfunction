data modify storage luigis_mansion:data entity set value {attack_type:"spin"}
execute positioned 744.0 11 46 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
execute positioned 739 13 45.0 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {attack_type:"spin"}
execute positioned 740 11 40.0 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
execute positioned 746 11 37.0 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #hidden_room Wave 1