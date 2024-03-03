teleport @s ^ ^ ^0.15

data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.normal
execute if data storage luigis_mansion:data passive{tags:["element_hurt"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.burning

$execute at @s run function $(namespace):animations/fake_door/$(id)/right