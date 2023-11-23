tag @e[scores={Room=20},tag=candle_flame,tag=incense] add lit
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 737 11 49 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 745 11 44 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 736 11 39 run function luigis_mansion:spawn_entities/ghost/purple_puncher
scoreboard players set #fortune_tellers_room Wave 100