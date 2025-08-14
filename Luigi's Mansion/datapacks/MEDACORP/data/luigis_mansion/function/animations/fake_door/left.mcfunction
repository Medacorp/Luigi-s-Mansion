teleport @s ^1 ^ ^0.3

data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "normal"
execute if data storage luigis_mansion:data ghost{tags:["element_hurt"]} run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "burning"

$execute at @s run function $(namespace):animations/fake_door/$(id)/left