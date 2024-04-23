execute if entity @s[tag=!dead,tag=!remove_from_existence] run function luigis_mansion:room/dark_room
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @s add dark_room

execute store result score #temp Time run data get entity @s ArmorItems[3].components."minecraft:custom_model_data"
execute if entity @s[tag=was_dark_room,tag=!dark_room] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players operation #temp Time -= @s FurnitureLightModel
execute if entity @s[tag=!was_dark_room,tag=dark_room] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players operation #temp Time += @s FurnitureLightModel
execute if entity @s[tag=was_dark_room,tag=!dark_room] run tag @s add lit
execute if entity @s[tag=!was_dark_room,tag=dark_room] run tag @s remove lit
scoreboard players reset #temp Time

execute if entity @s[tag=falling] run function luigis_mansion:entities/furniture/type/lamp/fall

tag @s[tag=dark_room] add was_dark_room
tag @s[tag=!dark_room] remove was_dark_room