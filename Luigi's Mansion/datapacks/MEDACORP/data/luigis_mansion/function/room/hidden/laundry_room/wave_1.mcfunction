data modify storage luigis_mansion:data entity set value {room:22,attack_type:"spin"}
execute positioned 717 11 -44 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:22}
execute positioned 717 11 -58 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #laundry_room Wave 1