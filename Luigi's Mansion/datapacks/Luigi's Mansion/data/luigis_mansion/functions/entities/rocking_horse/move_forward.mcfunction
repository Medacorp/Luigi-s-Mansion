execute if block ~ ~ ~ minecraft:barrier unless block ^ ^ ^1 minecraft:barrier unless block ^ ^1 ^1 minecraft:barrier run teleport @s ^ ^ ^0.01
execute unless block ^ ^ ^0.6 minecraft:barrier unless block ^ ^1 ^0.6 minecraft:barrier run teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute if block ^ ^ ^0.6 minecraft:barrier rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier run scoreboard players set #temp Move 0
execute if block ^ ^1 ^0.6 minecraft:barrier rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier run scoreboard players set #temp Move 0
execute if block ^ ^ ^0.6 minecraft:barrier rotated ~ 0 unless block ^ ^ ^0.6 minecraft:barrier if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/rocking_horse/move_forward
execute if block ^ ^1 ^0.6 minecraft:barrier rotated ~ 0 unless block ^ ^ ^0.6 minecraft:barrier if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/rocking_horse/move_forward
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/rocking_horse/move_forward