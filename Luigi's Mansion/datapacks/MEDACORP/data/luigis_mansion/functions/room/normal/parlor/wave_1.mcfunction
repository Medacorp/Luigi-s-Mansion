tag @e[scores={Room=3},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 722 20 28.0 run function luigis_mansion:spawn_entities/ghost/gold_ghost
scoreboard players set #parlor Wave 1