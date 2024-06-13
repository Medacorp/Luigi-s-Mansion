execute at @s[scores={SpawnTime=..19}] unless block ~ ~0.3 ~ #luigis_mansion:items_ignore run scoreboard players set @s SpawnTime 20
execute at @s[scores={SpawnTime=..19}] if block ~ ~0.3 ~ #luigis_mansion:items_ignore run teleport @s ~ ~0.05 ~
execute at @s[tag=!hit_floor,scores={SpawnTime=20..}] run teleport @s ~ ~-0.1 ~
execute at @s if block ^ ^ ^0.3 #luigis_mansion:items_ignore run teleport @s ^ ^ ^0.05
tag @s[tag=hit_floor] remove thrown