teleport @s[tag=!was_in_vacuum] ~ ~1 ~
teleport @s[tag=was_in_vacuum] ~ ~1.25 ~
execute at @s[tag=!no_ai] run function luigis_mansion:entities/banana_peel/ai

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s run teleport @s[tag=!was_in_vacuum] ~ ~-1 ~
execute at @s run teleport @s[tag=was_in_vacuum] ~ ~-1.25 ~