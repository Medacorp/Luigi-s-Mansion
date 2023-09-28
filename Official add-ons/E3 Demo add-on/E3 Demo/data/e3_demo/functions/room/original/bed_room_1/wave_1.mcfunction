data modify storage luigis_mansion:data entity set value {drop_pearls:0b,drop_poison_mushrooms:0b,scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.lydia.scan"}'}}
execute positioned 690 111 41 rotated 135 0 run function luigis_mansion:spawn_entities/portrait_ghost/lydia
execute positioned 689 111 54 run function e3_demo:spawn_entities/ghost/can_spawn_now/ghost/pink
execute positioned 693 111 42 run function e3_demo:spawn_entities/ghost/can_spawn_now/puncher/white
scoreboard players set #bed_room_1 Wave 1