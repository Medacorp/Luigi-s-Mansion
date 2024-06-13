data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 640 20 61.0 run function luigis_mansion:spawn_entities/ghost/flash
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 646 20 61.0 run function luigis_mansion:spawn_entities/ghost/flash
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 640 20 73 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:34,attack_type:"spin"}
execute positioned 646 20 73 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 640 20 48 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:34,attack_type:"spin"}
execute positioned 646 20 48 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
scoreboard players set #tea_room Wave 2