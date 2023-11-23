tag @e[scores={Room=56},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {spawn:1b}
execute positioned 747 29 8 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 742 29 18.0 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 746 29 27 run function luigis_mansion:spawn_entities/ghost/blue_twirler
scoreboard players set #telephone_room Wave 100