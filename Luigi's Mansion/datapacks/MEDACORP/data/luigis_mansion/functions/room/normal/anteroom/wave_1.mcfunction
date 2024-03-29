tag @e[scores={Room=4},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {room:4}
execute positioned 687 20 33.0 run function luigis_mansion:spawn_entities/ghost/gold_ghost
scoreboard players set #anteroom Wave 1