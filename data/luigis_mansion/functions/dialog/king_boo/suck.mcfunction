tag @s add me
execute positioned ^ ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^ ^0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute unless entity @a[tag=me,distance=..0.7] positioned ^ ^ ^0.5 run function luigis_mansion:dialog/king_boo/suck
execute if entity @a[tag=me,distance=..0.7] run teleport @s ^ ^ ^-0.03
tag @s remove me