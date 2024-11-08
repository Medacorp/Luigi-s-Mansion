data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 739 23 65 rotated -110 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/teddy_bear
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 739 23 68.0 rotated -90 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/teddy_bear
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 739 23 70 rotated -70 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/teddy_bear
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 747 21 58 rotated -45 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/teddy_bear
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 743 23 55 rotated 0 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/teddy_bear
data modify storage luigis_mansion:data entity set value {room:7}
execute positioned 745 23 55 rotated 0 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/teddy_bear
data modify storage luigis_mansion:data entity set value {room:7,spawn:2b}
execute positioned 741 20 63 run function e3_demo:spawn_entities/ghost/body_slammer/orange
data modify storage luigis_mansion:data entity set value {room:7,spawn:2b}
execute positioned 744 20 65 if predicate luigis_mansion:50_50 run function e3_demo:spawn_entities/ghost/ghost/orange
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