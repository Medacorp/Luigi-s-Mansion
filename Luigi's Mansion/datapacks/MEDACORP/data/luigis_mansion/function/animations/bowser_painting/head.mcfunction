teleport @s[tag=!flipped_gravity] ^ ^1.2 ^0.01
teleport @s[tag=flipped_gravity] ^ ^1.2 ^0.01
tag @s add 2d

$execute at @s run function $(namespace):animations/bowser_painting/$(id)/head