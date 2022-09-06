execute unless score #courtyard_plant_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #courtyard_plant_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 650 104 15 run function luigis_mansion_3ds_remake:room/hidden/courtyard/plant_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 650 102 15 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #courtyard_plant_2 Searched 1
function luigis_mansion_3ds_remake:room/gallery/clear_task/beginner/task_5