tag @e[scores={Room=21},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {room:21}
execute positioned 738 11 -52.0 run function luigis_mansion:spawn_entities/ghost/mirror_ghost
scoreboard players set #mirror_room Wave 1