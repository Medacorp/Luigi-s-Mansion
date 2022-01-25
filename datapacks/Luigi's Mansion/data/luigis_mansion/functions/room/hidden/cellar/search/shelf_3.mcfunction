execute unless score #cellar_shelf_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #cellar_shelf_3 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 741 7 67 run function luigis_mansion:room/hidden/cellar/shelf_3
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 742 7 67 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #cellar_shelf_3 Searched 1
tag @e[x=742.5,y=6,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=742.5,y=6,z=67.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn