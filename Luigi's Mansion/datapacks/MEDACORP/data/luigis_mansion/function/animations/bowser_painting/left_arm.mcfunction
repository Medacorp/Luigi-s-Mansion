teleport @s[tag=!flipped_gravity] ^0.39 ^1.053 ^
teleport @s[tag=flipped_gravity] ^-0.39 ^1.347 ^
tag @s add 2d

$execute at @s run function $(namespace):animations/bowser_painting/$(id)/left_arm