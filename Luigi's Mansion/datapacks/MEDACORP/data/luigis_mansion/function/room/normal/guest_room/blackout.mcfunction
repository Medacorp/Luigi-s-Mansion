tag @e[tag=haunted_clown_doll] add enabled
data modify storage luigis_mansion:data entity set value {room:70,spawn:2b}
execute positioned 741 20 -46 run function luigis_mansion:spawn_entities/ghost/temper_terror
data modify storage luigis_mansion:data entity set value {room:70,spawn:2b}
execute positioned 739 20 -50 run function luigis_mansion:spawn_entities/ghost/temper_terror
data modify storage luigis_mansion:data entity set value {room:70,spawn:2b}
execute positioned 742 20 -49 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
data modify storage luigis_mansion:data entity set value {room:70,spawn:2b}
execute positioned 744 20 -46 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
scoreboard players set #guest_room Wave 100