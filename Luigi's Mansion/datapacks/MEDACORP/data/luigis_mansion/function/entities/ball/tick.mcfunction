teleport @s[tag=!big] ~ ~1 ~
teleport @s[tag=big] ~ ~0.4 ~
execute at @s[tag=!no_ai] run function luigis_mansion:entities/ball/ai
execute at @s run teleport @s[tag=!big] ~ ~-1 ~
execute at @s run teleport @s[tag=big] ~ ~-0.4 ~

execute at @s[tag=!big,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s[tag=big,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall