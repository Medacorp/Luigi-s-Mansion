execute at @s unless block ~0.2 ~ ~ #luigis_mansion:all_ignore unless block ~-0.2 ~ ~ #luigis_mansion:all_ignore unless block ~0.2 ~ ~ #minecraft:slabs[type=bottom] unless block ~-0.2 ~ ~ #minecraft:slabs[type=bottom] unless block ~0.2 ~ ~ #minecraft:stairs[half=bottom] unless block ~-0.2 ~ ~ #minecraft:stairs[half=bottom] run tag @s add stuck
execute at @s unless block ~ ~ ~0.2 #luigis_mansion:all_ignore unless block ~ ~ ~-0.2 #luigis_mansion:all_ignore unless block ~ ~ ~0.2 #minecraft:slabs[type=bottom] unless block ~ ~ ~-0.2 #minecraft:slabs[type=bottom] unless block ~ ~ ~0.2 #minecraft:stairs[half=bottom] unless block ~ ~ ~-0.2 #minecraft:stairs[half=bottom] run tag @s add stuck
execute at @s unless block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ #minecraft:stairs[half=bottom] run tag @s add stuck
execute at @s unless block ~0.2 ~ ~ #luigis_mansion:all_ignore unless block ~-0.2 ~ ~ #luigis_mansion:all_ignore unless block ~0.2 ~ ~ #minecraft:slabs[type=bottom] unless block ~-0.2 ~ ~ #minecraft:slabs[type=bottom] unless block ~0.2 ~ ~ #minecraft:stairs[half=bottom] unless block ~-0.2 ~ ~ #minecraft:stairs[half=bottom] unless block ~ ~ ~-0.2 #luigis_mansion:all_ignore unless block ~ ~ ~-0.2 #luigis_mansion:all_ignore unless block ~ ~ ~0.2 #minecraft:slabs[type=bottom] unless block ~ ~ ~-0.2 #minecraft:slabs[type=bottom] unless block ~ ~ ~0.2 #minecraft:stairs[half=bottom] unless block ~ ~ ~-0.2 #minecraft:stairs[half=bottom] run teleport @s ~ ~1 ~
execute at @s[tag=stuck] if block ~ ~ ~1 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ 0 ~
execute at @s[tag=stuck] if block ~ ~ ~-1 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ -180 ~
execute at @s[tag=stuck] if block ~1 ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~ -90 ~
execute at @s[tag=stuck] if block ~-1 ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~ 90 ~
execute at @s[tag=stuck] if block ~ ~ ~1 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~ 0 ~
execute at @s[tag=stuck] if block ~ ~ ~-1 #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~ -180 ~
execute at @s[tag=stuck] if block ~1 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~ -90 ~
execute at @s[tag=stuck] if block ~-1 ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~ 90 ~
execute at @s[tag=stuck] if block ~ ~ ~1 #minecraft:stairs[half=bottom] run teleport @s ~ ~ ~ 0 ~
execute at @s[tag=stuck] if block ~ ~ ~-1 #minecraft:stairs[half=bottom] run teleport @s ~ ~ ~ -180 ~
execute at @s[tag=stuck] if block ~1 ~ ~ #minecraft:stairs[half=bottom] run teleport @s ~ ~ ~ -90 ~
execute at @s[tag=stuck] if block ~-1 ~ ~ #minecraft:stairs[half=bottom] run teleport @s ~ ~ ~ 90 ~
execute at @s[tag=!forced_collision] rotated ~ 0 run teleport @s ^ ^ ^0.2
tag @s remove collision
tag @s[tag=forced_collision] add collision
execute at @s[tag=!no_height_change] unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~1 ~
execute at @s[tag=!no_height_change] if block ~ ~ ~ #minecraft:slabs if block ~ ~1 ~ #luigis_mansion:all_ignore if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~1 ~
execute at @s[tag=!no_height_change] if block ~ ~ ~ #minecraft:stairs if block ~ ~1 ~ #luigis_mansion:all_ignore if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~1 ~
execute at @s[tag=!no_height_change] if block ~ ~-1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-1 ~
execute at @s[tag=!stuck,y_rotation=-180..0] unless block ~0.2 ~ ~ #luigis_mansion:all_ignore unless block ~0.2 ~ ~ #minecraft:slabs[type=bottom] unless block ~0.2 ~ ~ #minecraft:stairs[half=bottom] run tag @s add collision
execute at @s[tag=!stuck,y_rotation=0..-180] unless block ~-0.2 ~ ~ #luigis_mansion:all_ignore unless block ~-0.2 ~ ~ #minecraft:slabs[type=bottom] unless block ~-0.2 ~ ~ #minecraft:stairs[half=bottom] run tag @s add collision
execute at @s[tag=!stuck,y_rotation=-90..90] unless block ~ ~ ~0.2 #luigis_mansion:all_ignore unless block ~ ~ ~0.2 #minecraft:slabs[type=bottom] unless block ~ ~ ~0.2 #minecraft:stairs[half=bottom] run tag @s add collision
execute at @s[tag=!stuck,y_rotation=90..-90] unless block ~ ~ ~-0.2 #luigis_mansion:all_ignore unless block ~ ~ ~-0.2 #minecraft:slabs[type=bottom] unless block ~ ~ ~-0.2 #minecraft:stairs[half=bottom] run tag @s add collision
execute at @s[tag=!stuck,y_rotation=-180..0] unless block ~0.2 ~1 ~ #luigis_mansion:all_ignore run tag @s add collision
execute at @s[tag=!stuck,y_rotation=0..-180] unless block ~-0.2 ~1 ~ #luigis_mansion:all_ignore run tag @s add collision
execute at @s[tag=!stuck,y_rotation=-90..90] unless block ~ ~1 ~0.2 #luigis_mansion:all_ignore run tag @s add collision
execute at @s[tag=!stuck,y_rotation=90..-90] unless block ~ ~1 ~-0.2 #luigis_mansion:all_ignore run tag @s add collision
execute rotated ~ 0 run teleport @s[tag=collision] ^ ^ ^-0.2
execute at @s unless block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ #minecraft:stairs[half=bottom] run tag @s[tag=!stuck] add collision
execute rotated ~ 0 run teleport @s[tag=collision] ~ ~ ~ ~50 ~
execute rotated ~ 0 if predicate luigis_mansion:50_50 run teleport @s[tag=collision] ~ ~ ~ ~-100 ~
tag @s remove forced_collision
tag @s remove stuck
scoreboard players add @s[tag=!collision] ActionTime 1
scoreboard players add @s[tag=!collision] Time 1
execute at @s[tag=collision] run function luigis_mansion:entities/ghost_marker/move
execute at @s[tag=!collision,scores={ActionTime=..4}] run function luigis_mansion:entities/ghost_marker/move