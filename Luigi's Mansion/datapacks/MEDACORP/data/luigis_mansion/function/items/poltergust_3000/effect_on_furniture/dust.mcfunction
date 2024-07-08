tag @s add in_dust
execute if entity @s[scores={FurnitureElementUp=-2147483648..}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/dust_element
tag @s[tag=shaken_by_dust,nbt=!{ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"rolling"}}}]},nbt=!{ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"swinging"}}}]},nbt=!{ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"swirling"}}}]}] add shake
execute if entity @s[tag=searchable_by_dust,nbt={ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"swinging"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_dust,nbt={ArmorItems:[{components:{"minecraft:custom_data":{furniture_type:"swirling"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl
data modify entity @s ArmorItems[3].components."minecraft:custom_data".hit_by.dust append value 0
execute store result entity @s ArmorItems[3].components."minecraft:custom_data".hit_by.dust[-1] int 1 run scoreboard players get #temp ID