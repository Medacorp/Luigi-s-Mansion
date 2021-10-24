tag @s add me
execute positioned ^ ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^ ^0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute unless entity @a[tag=me,distance=..0.7] positioned ^ ^ ^0.5 run function luigis_mansion:dialog/king_boo/suck
execute if entity @a[tag=me,distance=..0.7] run teleport @s ^ ^ ^-0.03
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.bowser.vacuum hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={Sound=0}] Sound 20
tag @s remove me