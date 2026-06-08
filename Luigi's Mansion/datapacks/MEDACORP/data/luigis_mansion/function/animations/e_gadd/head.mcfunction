teleport @s ^ ^0.9 ^0.08

scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

$execute at @s run function $(namespace):animations/e_gadd/$(id)/head