execute if entity @s[tag=!dead,tag=!remove_from_existence] run function luigis_mansion:room/dark_room
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @s add dark_room

execute if entity @s[tag=!lit,tag=!dark_room] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.on
execute if entity @s[tag=!lit,tag=!dark_room] run tag @s add lit
execute if entity @s[tag=lit,tag=dark_room] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.off
execute if entity @s[tag=lit,tag=dark_room] run tag @s remove lit

execute if entity @s[tag=falling] run function luigis_mansion:entities/furniture/type/lamp/fall