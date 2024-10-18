teleport @s ^-0.46 ^0.4 ^

$execute at @s run function $(namespace):animations/shivers/$(id)/right_arm

execute if data storage luigis_mansion:data ghost{tags:["burning"]} unless entity @s[nbt={ArmorItems:[{components:{"minecraft:item_model":"luigis_mansion:empty"}}]}] unless entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_model_data":0}}]}] at @s positioned ~ ~1.4 ~ run function luigis_mansion:animations/shivers/candle_flame