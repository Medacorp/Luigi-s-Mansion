spreadplayers 803.0 2.0 0 11 under 19 true @s
execute at @s if block ~ 15 ~ minecraft:lime_wool positioned ~ 18 ~ run function luigis_mansion:entities/bogmire/spawn_shadow_here
execute at @s if block ~ 15 ~ minecraft:lime_wool positioned ~ 17 ~ run tag @e[tag=black_bogmire,dy=2] remove new_black_bogmire
execute at @s unless block ~ 15 ~ minecraft:lime_wool positioned ~ 18 ~ run function luigis_mansion:entities/bogmire/instant_spawn/normal
teleport @s ~ ~ ~ ~ ~