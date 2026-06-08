teleport @s[tag=!flipped_gravity] ^ ^0.2 ^-0.23
teleport @s[tag=flipped_gravity] ^ ^1.6 ^-0.23

scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

data modify entity @s item set from storage luigis_mansion:data passive.poltergust
execute unless score #mirrored Selected matches 1 run data modify entity @s item merge from storage luigis_mansion:data passive.poltergust.components."minecraft:custom_data".model_data.body_right
execute if score #mirrored Selected matches 1 run data modify entity @s item merge from storage luigis_mansion:data passive.poltergust.components."minecraft:custom_data".model_data.body_left

$execute at @s run function $(namespace):animations/e_gadd/$(id)/poltergust