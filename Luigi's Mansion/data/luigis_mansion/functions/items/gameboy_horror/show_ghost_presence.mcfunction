scoreboard players operation #temp Room = @s Room
execute as @e[tag=portrait_ghost,tag=!ghost_marker] if score @s Room = #temp Room run tag @s add target
execute at @e[tag=portrait_ghost,tag=target,tag=!spooky] run particle minecraft:dust 0.7 1 1 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 5 normal @s
execute at @e[tag=portrait_ghost,tag=target,tag=spooky] run particle minecraft:dust 0.7 1 1 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @e[tag=portrait_ghost,tag=target] remove target
scoreboard players reset #temp Room