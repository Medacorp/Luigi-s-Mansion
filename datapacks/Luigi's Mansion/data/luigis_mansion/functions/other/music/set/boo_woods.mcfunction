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
scoreboard players set @s[tag=yes] MusicGroup 0
scoreboard players set @s[tag=yes] HealthMusic 0
scoreboard players set @s[tag=yes] LastHealthMusic 1
tag @s remove yes