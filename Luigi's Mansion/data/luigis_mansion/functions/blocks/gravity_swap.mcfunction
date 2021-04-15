execute if block ~ ~-1 ~ minecraft:pumpkin run tag @s add flipped_gravity
execute if block ~ ~2 ~ minecraft:pumpkin run tag @s add remove_flipped_gravity

effect give @s[tag=flipped_gravity] minecraft:levitation 1000000 9 true
effect give @s[tag=remove_flipped_gravity] minecraft:resistance 1 9 true
effect clear @s[tag=remove_flipped_gravity] minecraft:levitation
tag @s[tag=remove_flipped_gravity] remove flipped_gravity
tag @s[tag=remove_flipped_gravity] remove remove_flipped_gravity
