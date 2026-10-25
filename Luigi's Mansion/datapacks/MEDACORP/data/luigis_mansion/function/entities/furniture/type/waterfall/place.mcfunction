execute if entity @s[tag=!left_corner] positioned ^-1.5 ^-4.5 ^-1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute if entity @s[tag=!left_corner] positioned ^-1.5 ^-4.5 ^ if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute positioned ^-1.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute positioned ^-0.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute positioned ^0.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute positioned ^1.5 ^-4.5 ^1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute if entity @s[tag=left_corner] positioned ^1.5 ^-4.5 ^ if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
execute if entity @s[tag=left_corner] positioned ^1.5 ^-4.5 ^-1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:barrier
tag @s add placed_barriers