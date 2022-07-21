execute if block ~ ~ ~3 minecraft:oak_wood run tag @s add yes
execute if block ~1 ~ ~2 minecraft:oak_wood run tag @s add yes
execute if block ~-1 ~ ~2 minecraft:oak_wood run tag @s add yes
execute if block ~2 ~ ~1 minecraft:oak_wood run tag @s add yes
execute if block ~-2 ~ ~1 minecraft:oak_wood run tag @s add yes
execute if block ~3 ~ ~ minecraft:oak_wood run tag @s add yes
execute if block ~-3 ~ ~ minecraft:oak_wood run tag @s add yes
execute if block ~-2 ~ ~-1 minecraft:oak_wood run tag @s add yes
execute if block ~-2 ~ ~-1 minecraft:oak_wood run tag @s add yes
execute if block ~-1 ~ ~-2 minecraft:oak_wood run tag @s add yes
execute if block ~-1 ~ ~-2 minecraft:oak_wood run tag @s add yes
execute if block ~ ~ ~-3 minecraft:oak_wood run tag @s add yes
execute if entity @s[tag=yes] run function luigis_mansion:other/music/set/force/boo_woods
tag @s remove yes