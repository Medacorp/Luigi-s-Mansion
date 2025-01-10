spreadplayers 803.0 2.0 0 11 under 19 true @s
execute store result entity @s Rotation[0] float 1 run random value -180..179
execute at @s run teleport @s ~ 18 ~
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run summon minecraft:lightning_bolt ~ 40 ~
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run scoreboard players set @s Dialog 199
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run tag @s add visible
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore rotated ~ 0 run function luigis_mansion:entities/bogmire/create_shadow/new