data modify storage luigis_mansion:data entity set value {room:7,spawn:2b}
execute positioned 741 20 63 run function e3_demo:spawn_entities/ghost/body_slammer/orange
data modify storage luigis_mansion:data entity set value {room:7,spawn:2b}
execute positioned 744 20 65 if predicate e3_demo:childs_room/alternate_ghost_position_chance run function e3_demo:spawn_entities/ghost/ghost/orange
execute unless entity @e[x=744.5,y=20,z=65.5,distance=..0.7,tag=ghost] positioned 748 20 57 run function e3_demo:spawn_entities/ghost/ghost/orange
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 748 20 55 run function e3_demo:spawn_entities/vacuumable/shining_ghost/white
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 748 20 55 run function e3_demo:spawn_entities/vacuumable/shining_ghost/white
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 744 20 71 run function e3_demo:spawn_entities/vacuumable/shining_ghost/white
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 744 20 71 run function e3_demo:spawn_entities/vacuumable/shining_ghost/white
scoreboard players set #childs_room Wave 1