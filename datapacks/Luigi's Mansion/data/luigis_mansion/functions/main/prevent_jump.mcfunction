summon minecraft:marker ~ ~ ~ {Tags:["teleport_target"]}
execute store result entity @e[type=minecraft:marker,tag=teleport_target,limit=1] Pos[1] double 0.001 run scoreboard players get @s JumpHeight
teleport @s ~ 0 ~
execute positioned as @e[type=minecraft:marker,tag=teleport_target,limit=1] run teleport @s ~ ~ ~
execute at @s align y unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #minecraft:slabs run teleport @s ~ ~0.5 ~
kill @e[type=minecraft:marker,tag=teleport_target,limit=1]