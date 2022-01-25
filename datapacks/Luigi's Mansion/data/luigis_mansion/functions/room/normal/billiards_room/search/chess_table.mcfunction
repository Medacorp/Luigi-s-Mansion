execute unless score #billiards_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #billiards_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 685 12 67 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 685 11 67 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #billiards_room_chess_table Searched 1
tag @e[x=685.5,y=11,z=67.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=685.5,y=11,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn