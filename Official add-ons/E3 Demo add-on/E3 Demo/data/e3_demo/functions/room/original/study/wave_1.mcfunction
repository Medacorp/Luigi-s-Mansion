data modify storage luigis_mansion:data entity set value {room:5,drop_pearls:0b,drop_poison_mushrooms:0b,mansion:{namespace:"e3_demo",id:"original"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.neville.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.neville.scan.more"}'}}
execute positioned 709.0 20 57.0 rotated -125 0 run function luigis_mansion:spawn_entities/portrait_ghost/neville
data modify storage luigis_mansion:data entity set value {room:5}
execute positioned 703 20 49 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:5}
execute positioned 703 20 49 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:5}
execute positioned 711 20 61 run function e3_demo:spawn_entities/vacuumable/boo
data modify storage luigis_mansion:data entity set value {room:5}
execute positioned 711 20 61 run function e3_demo:spawn_entities/vacuumable/boo
scoreboard players set #study Wave 1