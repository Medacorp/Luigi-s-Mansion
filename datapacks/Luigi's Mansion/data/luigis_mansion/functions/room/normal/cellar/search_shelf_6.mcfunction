execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 743 7 -60 run function luigis_mansion:room/normal/cellar/shelf_6
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 743 7 -61 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #cellar_shelf_6 Searched 1
tag @e[x=743.5,y=6,z=-60.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=743.5,y=6,z=-60.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn