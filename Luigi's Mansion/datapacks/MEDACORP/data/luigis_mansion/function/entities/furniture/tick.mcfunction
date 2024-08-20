execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/furniture/ai with entity @s ArmorItems[3].components."minecraft:custom_data"

execute if entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"door"}}}]}] run function luigis_mansion:entities/furniture/door
execute if entity @s[nbt=!{ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"door"}}}]}] run function luigis_mansion:animations/furniture