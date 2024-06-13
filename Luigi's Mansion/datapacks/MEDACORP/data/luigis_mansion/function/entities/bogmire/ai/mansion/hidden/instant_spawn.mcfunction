spreadplayers 803.0 14.0 0 11 under 19 true @s
execute at @s if block ~ 15 ~ minecraft:lime_wool run data modify storage luigis_mansion:data entity set value {appear_type:"none",spawn_time:120}
execute at @s if block ~ 15 ~ minecraft:lime_wool positioned ~ 18 ~ run function luigis_mansion:entities/bogmire/ai/mansion/hidden/spawn_black_bogmire
execute at @s unless block ~ 15 ~ minecraft:lime_wool run function luigis_mansion:entities/bogmire/ai/mansion/hidden/instant_spawn
teleport @s ~ ~ ~ ~ ~