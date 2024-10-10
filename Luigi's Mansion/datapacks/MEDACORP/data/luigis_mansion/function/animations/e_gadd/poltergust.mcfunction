teleport @s ^ ^-1.25 ^-0.23

data modify entity @s ArmorItems[3] set from storage luigis_mansion:data passive.poltergust
execute unless score #mirrored Selected matches 1 run data modify entity @s ArmorItems[3] merge from storage luigis_mansion:data passive.poltergust.components."minecraft:custom_data".model_data.body_right
execute if score #mirrored Selected matches 1 run data modify entity @s ArmorItems[3] merge from storage luigis_mansion:data passive.poltergust.components."minecraft:custom_data".model_data.body_left
data modify entity @s ArmorItems[3].components."minecraft:custom_data".animation set from storage luigis_mansion:data passive.animation

$execute at @s run function $(namespace):animations/e_gadd/$(id)/poltergust