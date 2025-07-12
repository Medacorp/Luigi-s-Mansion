$tag @e[tag=map_key,tag=$(name),limit=1] add remove_from_existence
tag @s add unlocked
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "unlocked"