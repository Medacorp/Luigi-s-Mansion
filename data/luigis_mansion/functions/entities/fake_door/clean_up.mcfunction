execute if entity @s[tag=west,tag=normal] run setblock ~ ~1 ~1 minecraft:cut_sandstone
execute if entity @s[tag=west,tag=normal] run setblock ~ ~1 ~-1 minecraft:cut_sandstone
execute if entity @s[tag=west,tag=attic] run setblock ~ ~1 ~1 minecraft:oak_planks
execute if entity @s[tag=west,tag=attic] run setblock ~ ~1 ~-1 minecraft:oak_planks
execute if entity @s[tag=!west,tag=normal] run setblock ~1 ~1 ~ minecraft:cut_sandstone
execute if entity @s[tag=!west,tag=normal] run setblock ~-1 ~1 ~ minecraft:cut_sandstone
execute if entity @s[tag=!west,tag=attic] run setblock ~1 ~1 ~ minecraft:oak_planks
execute if entity @s[tag=!west,tag=attic] run setblock ~-1 ~1 ~ minecraft:oak_planks
execute if entity @s[tag=normal] run fill ~ ~1 ~ ~ ~2 ~ minecraft:cut_sandstone
execute if entity @s[tag=attic] run fill ~ ~1 ~ ~ ~2 ~ minecraft:oak_planks
execute if entity @s[tag=normal] run setblock ~ ~ ~ minecraft:spruce_log[axis=y]
execute if entity @s[tag=attic] run setblock ~ ~ ~ minecraft:spruce_planks
execute if entity @s[tag=laundry_room] if score #mirrored Selected matches 0 run fill ~ ~1 ~ ~ ~1 ~-1 minecraft:quartz_block
execute if entity @s[tag=laundry_room] if score #mirrored Selected matches 1 run fill ~ ~1 ~ ~ ~1 ~1 minecraft:quartz_block
execute if entity @s[tag=laundry_room] run setblock ~ ~ ~ minecraft:light_blue_terracotta