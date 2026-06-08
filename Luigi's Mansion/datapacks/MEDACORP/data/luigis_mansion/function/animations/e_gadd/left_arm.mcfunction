teleport @s[tag=!flipped_gravity] ^0.25 ^0.76 ^-0.08
teleport @s[tag=flipped_gravity] ^-0.25 ^1.04 ^-0.08

scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item] item set from storage luigis_mansion:data passive.poltergust

$execute at @s run function $(namespace):animations/e_gadd/$(id)/left_arm