scoreboard players operation #temp MirrorX = @s MirrorX
scoreboard players operation #temp MirrorX *= #100 Constants
scoreboard players add #temp MirrorX 50
execute store result score #temp ActionTime run data get entity @s Pos[0] 100
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime
execute at @s run particle minecraft:bubble_pop ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp MirrorX