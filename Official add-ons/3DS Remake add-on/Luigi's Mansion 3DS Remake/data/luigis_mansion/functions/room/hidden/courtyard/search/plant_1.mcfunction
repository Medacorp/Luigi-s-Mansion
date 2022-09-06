execute unless score #courtyard_plant_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #courtyard_plant_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 646 104 0 run function luigis_mansion:room/hidden/courtyard/plant_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 646 102 0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #courtyard_plant_1 Searched 1
function luigis_mansion_3ds_remake:room/gallery/clear_task/beginner/task_5