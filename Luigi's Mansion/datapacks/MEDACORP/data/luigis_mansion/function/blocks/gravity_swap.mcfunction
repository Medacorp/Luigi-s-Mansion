execute if block ~ ~-0.1 ~ minecraft:pumpkin run tag @s add flipped_gravity
execute if block ~ ~2 ~ minecraft:pumpkin unless entity @s[scores={Shrunk=1..}] run tag @s remove flipped_gravity
execute if block ~ ~1 ~ minecraft:pumpkin run tag @s[scores={Shrunk=1..}] remove flipped_gravity

attribute @s[tag=flipped_gravity,tag=!separated_camera] minecraft:gravity base set -0.08
execute unless entity @s[tag=flipped_gravity,tag=!separated_camera] run attribute @s minecraft:gravity base set 0.08