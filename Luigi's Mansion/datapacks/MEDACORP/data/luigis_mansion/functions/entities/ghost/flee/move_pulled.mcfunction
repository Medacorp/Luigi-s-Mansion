execute if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^ ^0.6 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01
execute unless block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s add force_move
scoreboard players add #temp Move 1
execute at @s if block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~1.9 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.1 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:ghosts_ignore unless block ~0.3 ~ ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:ghosts_ignore unless block ~-0.3 ~ ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:ghosts_ignore unless block ~ ~ ~0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:ghosts_ignore unless block ~ ~ ~-0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.1
teleport @s[tag=force_move] ^ ^ ^0.01
execute if entity @s[tag=!force_move] unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run scoreboard players set #temp Move 0
execute if entity @s[tag=!force_move] unless block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run scoreboard players set #temp Move 0
tag @s remove force_move
execute if score #temp Move matches ..-1 positioned as @s unless entity @a[tag=vacuuming_this_ghost,distance=..3,limit=1] run function luigis_mansion:entities/ghost/flee/move_pulled