execute if entity @s[tag=!left_corner] positioned ^-1.5 ^-4.5 ^-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=!left_corner] positioned ^-1.5 ^-4.5 ^ if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute positioned ^-1.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute positioned ^-0.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute positioned ^0.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute positioned ^1.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=left_corner] positioned ^1.5 ^-4.5 ^ if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=left_corner] positioned ^1.5 ^-4.5 ^-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
tag @s remove placed_barriers