summon minecraft:marker ~ ~ ~ {Tags:["boo_height_check"]}
teleport @e[type=minecraft:marker,tag=boo_height_check,limit=1] ~ ~ ~
execute store result entity @e[type=minecraft:marker,tag=boo_height_check,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute positioned as @e[type=minecraft:marker,tag=boo_height_check,limit=1] rotated ~ 0 positioned ^ ^0.1 ^0.6 unless block ~ ~ ~ #luigis_mansion:boos_ignore unless block ~ ~1 ~ #luigis_mansion:boos_ignore unless block ~ ~2 ~ #luigis_mansion:boos_ignore unless block ~ ~3 ~ #luigis_mansion:boos_ignore unless block ~ ~4 ~ #luigis_mansion:boos_ignore unless block ~ ~5 ~ #luigis_mansion:boos_ignore unless block ~ ~6 ~ #luigis_mansion:boos_ignore run tag @s add wall
execute if entity @s[tag=up,x_rotation=-90..-45] unless block ~ ~1.3 ~ #luigis_mansion:boos_ignore positioned ~ ~-6 ~ if entity @e[type=minecraft:marker,tag=boo_height_check,limit=1,distance=..1] run tag @s add wall
execute if entity @s[tag=down,x_rotation=45..90] unless block ~ ~1.3 ~ #luigis_mansion:boos_ignore positioned ~ ~1 ~ if entity @e[type=minecraft:marker,tag=boo_height_check,limit=1,distance=..1] run tag @s add wall
kill @e[type=minecraft:marker,tag=boo_height_check,limit=1]
teleport @s[tag=!wall] ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute if entity @s[tag=wall] run scoreboard players set #temp Move 0
execute if entity @s[tag=wall] run scoreboard players set @s Time 600
execute if entity @s[tag=!wall] run scoreboard players add @s Time 1
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/boo/move/forward