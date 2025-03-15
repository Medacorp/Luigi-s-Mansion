teleport @s ^-0.25 ^-0.69 ^-0.08

execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data passive.poltergust

$execute at @s run function $(namespace):animations/e_gadd/$(id)/right_arm