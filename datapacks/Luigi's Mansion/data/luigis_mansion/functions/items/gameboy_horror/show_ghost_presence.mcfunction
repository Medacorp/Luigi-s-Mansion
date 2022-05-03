scoreboard players operation #temp Room = @s Room
execute as @e[tag=portrait_ghost,tag=!hidden,tag=!visible] if score @s Room = #temp Room run tag @s add target
tag @e[tag=target,tag=vanish] remove target
execute at @e[tag=target,tag=!spooky,tag=portrait_ghost] run particle minecraft:dust 0.7 1 1 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 5 normal @s
execute at @e[tag=target,tag=spooky,tag=portrait_ghost] run particle minecraft:dust 0.7 1 1 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @e[tag=portrait_ghost,tag=target] remove target
scoreboard players reset #temp Room
execute at @a[tag=same_room,gamemode=spectator] run particle minecraft:dust 0.2 1 0.2 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s