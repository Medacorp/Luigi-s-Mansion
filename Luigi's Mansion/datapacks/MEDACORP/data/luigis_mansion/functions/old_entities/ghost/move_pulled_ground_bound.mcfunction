execute if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute unless block ~ ~1 ~ #luigis_mansion:all_ignore run tag @s add force_move
scoreboard players add #temp Move 1
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
teleport @s[tag=force_move] ^ ^ ^0.01
execute if entity @s[tag=!force_move] unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp Move 0
tag @s remove force_move
execute if score #temp Move matches ..-1 positioned as @s unless entity @a[tag=vacuuming_this_ghost,distance=..3,limit=1] run function luigis_mansion:old_entities/ghost/move_pulled_ground_bound