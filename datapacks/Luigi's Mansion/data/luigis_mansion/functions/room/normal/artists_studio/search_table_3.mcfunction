execute unless score #artists_studio_table_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #artists_studio_table_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #artists_studio_table_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #artists_studio_table_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #artists_studio_table_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #artists_studio_table_3 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 695 30.5 -75 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 695 30.5 -75 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #artists_studio_table_3 Searched 1
tag @e[x=695.5,y=30,z=-74.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=695.5,y=30,z=-74.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn