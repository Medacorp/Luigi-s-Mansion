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
scoreboard players set @s[tag=yes] MusicType 39
scoreboard players set @s[tag=yes] Music 0
tag @s remove yes