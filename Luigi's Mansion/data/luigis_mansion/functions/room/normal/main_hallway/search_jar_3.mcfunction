execute unless score #main_hallway_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #main_hallway_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #main_hallway_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #main_hallway_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #main_hallway_jar_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #main_hallway_jar_3 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 680 13.5 -10 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 680 13.5 -10 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/main_hallway/jar_3
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 680 12 -10 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #main_hallway_jar_3 Searched 1