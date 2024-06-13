data modify entity @s[tag=!scared_head] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
data modify entity @s[tag=scared_head] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
tag @s remove scared_head