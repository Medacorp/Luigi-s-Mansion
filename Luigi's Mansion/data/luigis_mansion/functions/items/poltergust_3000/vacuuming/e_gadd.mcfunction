execute positioned ^ ^ ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^ ^0.5 ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^0.5 ^ ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute unless entity @s[distance=..0.5] positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/vacuuming/e_gadd
scoreboard players reset #temp Steps