execute if predicate luigis_mansion:50_50 run tag @s add turn_right
teleport @s[tag=!turn_right] ~ ~ ~ ~-30 ~
teleport @s[tag=turn_right] ~ ~ ~ ~30 ~
tag @s remove turn_right
scoreboard players set @s Turn 10