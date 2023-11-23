tag @e[scores={Room=45},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 662 20 98 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 670 20 96 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 666 20 93 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 666 20 101 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
scoreboard players set #astral_hall Wave 1