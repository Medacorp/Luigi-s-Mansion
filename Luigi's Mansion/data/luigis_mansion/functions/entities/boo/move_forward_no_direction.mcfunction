summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["boo_height_check"]}
tp @e[tag=boo_height_check,limit=1] ~ ~ ~
execute store result entity @e[tag=boo_height_check,limit=1] Pos[1] double 0.01 run scoreboard players get entity @s HomeY
execute positioned as @e[tag=boo_height_check,limit=1] positioned ^ ^ ^0.6 unless block ~ ~ ~ #luigis_mansion:boos_ignore unless block ~ ~1 ~ #luigis_mansion:boos_ignore unless block ~ ~2 ~ #luigis_mansion:boos_ignore unless block ~ ~3 ~ #luigis_mansion:boos_ignore unless block ~ ~4 ~ #luigis_mansion:boos_ignore unless block ~ ~5 ~ #luigis_mansion:boos_ignore unless block ~ ~6 ~ #luigis_mansion:boos_ignore run tag @s add wall
execute if entity @s[tag=up,x_rotation=-90..-45] unless block ~ ~1.3 ~ #luigis_mansion:boos_ignore positioned ~ ~-6 ~ if entity @e[tag=boo_height_check,limit=1,distance=..1] run tag @s add wall
execute if entity @s[tag=up,x_rotation=45..90] unless block ~ ~1.3 ~ #luigis_mansion:boos_ignore positioned ~ ~1 ~ if entity @e[tag=boo_height_check,limit=1,distance=..1] run tag @s add wall
kill @e[tag=boo_height_check,limit=1]
teleport @s[tag=!wall] ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute if entity @s[tag=wall] run scoreboard players set #temp Move 0
execute if entity @s[tag=wall] run scoreboard players set @s Time 120
execute if entity @s[tag=!wall] run scoreboard players add @s Time 1
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/boo/move_forward_no_direction