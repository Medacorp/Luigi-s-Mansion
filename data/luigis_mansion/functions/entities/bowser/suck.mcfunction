tag @s add me
execute positioned ^ ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1
execute unless entity @a[tag=me,distance=..0.5] positioned ^ ^ ^0.5 run function luigis_mansion:entities/bowser/suck
execute if entity @a[tag=me,distance=..0.5] run teleport @s ^ ^ ^-0.0001
tag @s remove me