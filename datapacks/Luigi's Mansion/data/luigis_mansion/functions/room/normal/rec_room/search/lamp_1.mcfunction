execute unless score #rec_room_lamp_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_lamp_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_lamp_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_lamp_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #rec_room_lamp_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #rec_room_lamp_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 643 15 -38 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 643 15 -38 run function luigis_mansion:room/normal/rec_room/lamp_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 643 16 -38 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 633 16 -38 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #rec_room_lamp_1 Searched 1