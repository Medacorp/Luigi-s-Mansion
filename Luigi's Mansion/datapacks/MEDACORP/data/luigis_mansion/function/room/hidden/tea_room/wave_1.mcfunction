tag @e[tag=haunted_plate] add enabled
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 640 20 65 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 640 20 56 run function luigis_mansion:spawn_entities/ghost/flash
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 642 20 48 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:34}
execute positioned 642 20 73 run function luigis_mansion:spawn_entities/ghost/blue_twirler
scoreboard players set #tea_room Wave 1