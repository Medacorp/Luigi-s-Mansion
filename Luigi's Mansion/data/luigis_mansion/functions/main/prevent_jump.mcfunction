summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["teleport_target"]}
execute store result entity @e[tag=teleport_target,limit=1] Pos[1] double 0.01 run scoreboard players get @s HallwaySection
teleport @s ~ 0 ~
execute positioned as @e[tag=teleport_target,limit=1] run teleport @s ~ ~ ~
execute at @s unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #minecraft:slabs run teleport @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~ ~ #minecraft:slabs run teleport @s ~ ~1 ~
kill @e[tag=teleport_target,limit=1]