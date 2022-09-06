execute positioned ^ ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^ ^0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0 0 0 0 10
execute positioned as @s[distance=..0.7] run teleport @s ^ ^ ^-0.3
execute if entity @s[scores={PoltergustSound=0}] run playsound luigis_mansion:entity.bowser.vacuum hostile @s ~ ~ ~ 3
scoreboard players set @s[scores={PoltergustSound=0}] PoltergustSound 20
execute unless entity @s[distance=..0.7] positioned ^ ^ ^0.5 run function luigis_mansion:dialog/king_boo/suck