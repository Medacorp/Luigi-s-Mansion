teleport @s ^0.25 ^-0.69 ^-0.08

execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item] ArmorItems[3] set from storage luigis_mansion:data passive.poltergust
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item] ArmorItems[3].components."minecraft:custom_data".animation set from storage luigis_mansion:data passive.animation

$execute at @s run function $(namespace):animations/e_gadd/$(id)/left_arm