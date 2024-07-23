data modify storage luigis_mansion:data entity set value {room:6,drop_pearls:0b,drop_timer_loot:0b,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.lydia.scan"}'}}
execute positioned 690 111 41 rotated 135 0 run function luigis_mansion:spawn_entities/portrait_ghost/lydia
data modify storage luigis_mansion:data entity set value {room:6,spawn:2b}
execute positioned 689 111 54 run function e3_demo:spawn_entities/ghost/ghost/pink
data modify storage luigis_mansion:data entity set value {room:6,spawn:2b}
execute positioned 693 111 42 run function e3_demo:spawn_entities/ghost/puncher/white
scoreboard players set #bed_room_1 Wave 1