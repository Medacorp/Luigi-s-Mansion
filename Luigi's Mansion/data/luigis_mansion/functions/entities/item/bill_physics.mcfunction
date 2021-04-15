scoreboard players add @s SpawnTime 1
tag @s[scores={SpawnTime=20}] add vacuumable
tag @s[scores={SpawnTime=600}] add dead
execute at @s positioned ~ ~1.5 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs at @s run teleport @s ~ ~0.1 ~

execute positioned ~ ~1.3 ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs at @s run teleport @s ^ ^ ^0.1

execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute positioned ~ ~1.3 ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore unless block ^ ^ ^0.3 #minecraft:slabs store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10

execute at @s positioned ~ ~1.3 ~ if entity @a[gamemode=!spectator,distance=..0.7] run tag @s add picked_up