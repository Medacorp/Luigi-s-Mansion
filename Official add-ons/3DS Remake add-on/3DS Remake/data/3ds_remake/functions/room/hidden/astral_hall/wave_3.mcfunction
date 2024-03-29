tag @e[scores={Room=45},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 662 20 -83 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 670 20 -81 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 666 20 -78 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 666 20 -86 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
scoreboard players set #astral_hall Wave 3