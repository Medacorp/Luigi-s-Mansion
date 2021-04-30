execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/cellar/shelf_1
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] positioned 713 95 46 run function luigis_mansion:spawn_entities/item/big_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 713 94 46 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #cellar_shelf_1 Searched 1
tag @e[x=713.5,y=93,z=46.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=713.5,y=93,z=46.5,distance=..0.7,tag=hidden_boo] add spawn