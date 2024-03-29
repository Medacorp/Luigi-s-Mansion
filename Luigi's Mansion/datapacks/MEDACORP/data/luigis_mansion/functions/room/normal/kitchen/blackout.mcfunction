tag @e[tag=haunted_frying_pan] add enabled
data modify storage luigis_mansion:data entity set value {room:27,spawn:2b}
execute positioned 702 11 66 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:27,spawn:2b}
execute positioned 707 11 66 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:27,spawn:2b}
execute positioned 707 11 85 run function luigis_mansion:spawn_entities/ghost/purple_puncher
scoreboard players set #kitchen Wave 100