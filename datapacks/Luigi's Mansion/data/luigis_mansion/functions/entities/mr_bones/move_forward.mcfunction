execute unless block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ #luigis_mansion:all_ignore run tag @s add in_furniture
execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^ ^0.6 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute at @s[tag=!in_furniture] if block ~ ~1 ~ #luigis_mansion:all_ignore unless block ~ ~1.9 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.1 ~
execute at @s[tag=!in_furniture] unless block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.1 ~
execute at @s[tag=!in_furniture] unless block ~0.3 ~ ~ #luigis_mansion:all_ignore unless block ~0.3 ~ ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute at @s[tag=!in_furniture] unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore unless block ~-0.3 ~ ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute at @s[tag=!in_furniture] unless block ~ ~ ~0.3 #luigis_mansion:all_ignore unless block ~ ~ ~0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute at @s[tag=!in_furniture] unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore unless block ~ ~ ~-0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute if entity @s[tag=!in_furniture] unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp Move 0
execute if entity @s[tag=!in_furniture] unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp Move 0
execute if entity @s[tag=!in_furniture] unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set @s Time 400
execute if entity @s[tag=!in_furniture] unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore run scoreboard players set @s Time 400
execute if entity @s[tag=!in_furniture] if block ^ ^1 ^1 #luigis_mansion:all_ignore run scoreboard players add @s Time 1
execute if entity @s[tag=in_furniture] unless block ^ ^ ^1 #minecraft:slabs[type=bottom] unless block ^ ^ ^1 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^1 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp Move 0
execute if entity @s[tag=in_furniture] unless block ^ ^1 ^1 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^1 #luigis_mansion:all_ignore run scoreboard players set #temp Move 0
execute if entity @s[tag=in_furniture] unless block ^ ^ ^1 #minecraft:slabs[type=bottom] unless block ^ ^ ^1 #luigis_mansion:all_ignore run scoreboard players set @s Time 400
execute if entity @s[tag=in_furniture] unless block ^ ^1 ^1 #luigis_mansion:all_ignore run scoreboard players set @s Time 400
execute if entity @s[tag=in_furniture] if block ^ ^1 ^1 #luigis_mansion:all_ignore run scoreboard players add @s Time 1
tag @s remove in_furniture
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/mr_bones/move_forward