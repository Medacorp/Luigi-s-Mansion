tag @e[scores={Room=45},tag=furniture,tag=door] add blockade
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 669 20 -86 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:45,spawn:2b}
execute positioned 663 20 -77 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
scoreboard players set #astral_hall Wave 2