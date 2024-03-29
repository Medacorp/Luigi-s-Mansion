tag @e[tag=haunted_plate] add enabled
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 642 20 -33 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 642 20 -58 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
scoreboard players set #tea_room Wave 1