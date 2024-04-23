teleport @s ^0.46 ^0.4 ^

$execute at @s run function $(namespace):animations/shivers/$(id)/left_arm

execute if data storage luigis_mansion:data ghost{tags:["burning"]} unless entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_model_data":20}}]}] at @s run function luigis_mansion:animations/shivers/candle_flame