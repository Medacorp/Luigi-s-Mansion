execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #hidden_room_trophy_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/hidden_room/trophy_1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 715 104 -20 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_trophy_1 Searched 1
tag @e[x=715.5,y=104,z=-19.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=715.5,y=104,z=-19.5,distance=..0.7,tag=ghost_marker] add spawn