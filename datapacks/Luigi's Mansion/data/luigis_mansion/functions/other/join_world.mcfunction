give @s minecraft:diamond_pickaxe{HideFlags:63,Damage:5,Unbreakable:1b,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.contest_reward_map"}'},luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}
execute in minecraft:overworld run teleport @s 858 90 -38 0 0
attribute @s minecraft:generic.max_health base set 100
effect give @s minecraft:instant_health 1 19 true
gamemode adventure @s
title @s times 40 40 40
tag @s add joined
tag @s add fix_health
function luigis_mansion:other/save_luigi_color
function luigis_mansion:other/log_on