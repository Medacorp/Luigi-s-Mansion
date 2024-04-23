execute unless score #foyer_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] run data modify storage luigis_mansion:data entity set value {room:1}
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] positioned 746 12.5 2 run function luigis_mansion:spawn_entities/item/room_search/big_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] run data modify storage luigis_mansion:data entity set value {room:1}
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 746 12.5 2 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 746 11 2 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #foyer_table Searched 1