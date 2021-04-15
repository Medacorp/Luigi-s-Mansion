execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #cellar_shelf_6 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/cellar/shelf_6
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 714 98 55 run function luigis_mansion:blocks/dust
scoreboard players set #cellar_shelf_6 Searched 1
tag @e[x=714.5,y=97,z=55.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=714.5,y=97,z=55.5,distance=..0.7,tag=hidden_boo] add spawn