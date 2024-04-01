data modify storage luigis_mansion:data entity set value {room:16,drop_pearls:0b,drop_poison_mushrooms:0b,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.spooky.scan"}'}}
execute positioned 675 102 52 rotated -135 0 run function luigis_mansion:spawn_entities/portrait_ghost/spooky
data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 683 108 40 run function e3_demo:spawn_entities/vacuumable/bat/white
data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 683 108 42 run function e3_demo:spawn_entities/vacuumable/bat/white
data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 676 107 53 run function e3_demo:spawn_entities/vacuumable/bat/white
data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 676 107 55 run function e3_demo:spawn_entities/vacuumable/bat/white
scoreboard players set #back_yard Wave 1