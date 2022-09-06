teleport @s ~ ~ ~ ~ ~
scoreboard players operation #temp2 MirrorX = #temp MirrorX
scoreboard players operation #temp2 MirrorX *= #100 Constants
scoreboard players add #temp2 MirrorX 50
execute store result score #temp ActionTime run data get entity @s Pos[0] 100
scoreboard players operation #temp ActionTime -= #temp2 MirrorX
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation #temp2 MirrorX -= #temp ActionTime
execute at @s run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp2 MirrorX