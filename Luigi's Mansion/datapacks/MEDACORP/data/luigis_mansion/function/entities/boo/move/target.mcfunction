$execute at @s facing $(x) $(y) $(z) run teleport @s ^ ^ ^0.01 ~ ~
scoreboard players remove #temp Move 1
scoreboard players add @s BooTimer 1
$execute positioned $(x) $(y) $(z) run tag @s[distance=..0.7] add target_reached
execute if score #temp Move matches 1.. positioned as @s[tag=!target_reached] run function luigis_mansion:entities/boo/move/target with entity @s data.boo_target