execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/furniture/ai with entity @s ArmorItems[3].components."minecraft:custom_data"
execute if entity @s[tag=!remove_from_existence,tag=!dead,tag=debug_furniture] run function luigis_mansion:entities/furniture/debug
execute if entity @s[tag=!remove_from_existence,tag=!dead] unless entity @s[tag=debug_furniture] if score #debug_furniture Selected matches 1.. run function luigis_mansion:entities/furniture/debug

tag @s remove element_in_vacuum
tag @s remove element_in_dust
tag @s remove element_in_fire
tag @s remove element_in_water
tag @s remove element_in_ice

execute if entity @s[nbt={ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"door"}}}]}] run function luigis_mansion:entities/furniture/door
execute if entity @s[nbt=!{ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"door"}}}]}] run function luigis_mansion:animations/furniture