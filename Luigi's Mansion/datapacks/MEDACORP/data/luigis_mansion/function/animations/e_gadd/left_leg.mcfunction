teleport @s[tag=!flipped_gravity] ^0.1 ^0.41 ^-0.08
teleport @s[tag=flipped_gravity] ^-0.1 ^1.39 ^-0.08

scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

$execute at @s run function $(namespace):animations/e_gadd/$(id)/left_leg