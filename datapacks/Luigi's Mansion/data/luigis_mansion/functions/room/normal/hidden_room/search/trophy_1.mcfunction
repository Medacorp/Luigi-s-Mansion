execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 746 14 47 run function luigis_mansion:spawn_entities/item/room_search/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 746 14 47 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 746 14 47 run function luigis_mansion:room/normal/hidden_room/trophy_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 746 13 47 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #hidden_room_trophy_1 Searched 1
tag @e[x=746.5,y=13,z=47.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=746.5,y=13,z=47.5,distance=..0.7,tag=ghost,tag=hidden] add spawn