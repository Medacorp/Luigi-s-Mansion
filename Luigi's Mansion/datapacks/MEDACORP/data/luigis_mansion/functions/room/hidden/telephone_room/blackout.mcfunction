tag @e[scores={Room=56},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {room:56,spawn:1b}
execute positioned 748 29 10 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:56,spawn:1b}
execute positioned 752 29 10 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:56,spawn:2b}
execute positioned 743 29 2 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:56,spawn:2b}
execute positioned 743 29 -7 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:56,spawn:2b}
execute positioned 748 29 -15 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:56,spawn:2b}
execute positioned 752 29 -15 run function luigis_mansion:spawn_entities/ghost/blue_twirler
scoreboard players set #telephone_room Wave 100