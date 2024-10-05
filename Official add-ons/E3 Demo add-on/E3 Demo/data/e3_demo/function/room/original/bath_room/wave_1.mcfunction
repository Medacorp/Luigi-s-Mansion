data modify storage luigis_mansion:data entity set value {room:12,drop_pearls:0b,drop_timer_loot:0b,scan_result:{namespace:"luigis_mansion",id:"scan/entity/miss_petunia"}}
execute positioned 651 12 23 run function luigis_mansion:spawn_entities/portrait_ghost/miss_petunia
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 655.01 12 23 rotated 0 0 run function luigis_mansion:spawn_entities/showering_shadow
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 658 11 27 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 658 11 27 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 657 11 27 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 657 11 27 run function e3_demo:spawn_entities/vacuumable/boo
scoreboard players set #bath_room Wave 1