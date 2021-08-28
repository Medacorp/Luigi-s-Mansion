execute if block ~ ~0.6 ~ #luigis_mansion:items_ignore run teleport @s ~ ~-0.2 ~
execute unless block ~ ~0.6 ~ #luigis_mansion:items_ignore align y run teleport @s ~ ~0.3 ~
scoreboard players add @s WaitTime 1
tag @s[scores={WaitTime=100}] add dead