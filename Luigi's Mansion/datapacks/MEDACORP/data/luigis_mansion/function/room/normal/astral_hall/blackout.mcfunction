data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 664 20 -75 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b,attack_type:"spin"}
execute positioned 668 20 -75 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b,attack_type:"spin"}
execute positioned 666 20 -80 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 666 20 -84 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b,attack_type:"spin"}
execute positioned 664 20 -89 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 668 20 -89 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #astral_hall Wave 100