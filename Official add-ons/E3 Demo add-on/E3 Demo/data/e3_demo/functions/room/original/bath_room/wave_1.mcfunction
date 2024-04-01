data modify storage luigis_mansion:data entity set value {room:12,drop_pearls:0b,drop_poison_mushrooms:0b,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.miss_petunia.scan"}'}}
execute positioned 651 12 23 run function luigis_mansion:spawn_entities/portrait_ghost/miss_petunia
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 655.0 21 23 rotated 0 0 run function luigis_mansion:spawn_entities/showering_shadow
execute positioned 658 11 27 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 658 11 27 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 657 11 27 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:12}
execute positioned 657 11 27 run function e3_demo:spawn_entities/vacuumable/boo
scoreboard players set #bath_room Wave 1