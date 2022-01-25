execute unless score #hallway_5_jar_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hallway_5_jar_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hallway_5_jar_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hallway_5_jar_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #hallway_5_jar_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hallway_5_jar_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 680 13.5 -19 run function luigis_mansion:spawn_items/item/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 680 12 -19 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #hallway_5_jar_2 Searched 1