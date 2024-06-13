execute at @s run teleport @s ~ ~1 ~
execute at @s[tag=!no_ai] run function luigis_mansion:entities/bowling_ball/ai
execute at @s run teleport @s ~ ~-1 ~

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall