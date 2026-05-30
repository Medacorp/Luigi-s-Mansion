scoreboard players operation #temp MirrorZ = @s MirrorZ
scoreboard players operation #temp MirrorZ *= #100 Constants
scoreboard players add #temp MirrorZ 50
execute store result score #temp ActionTime run data get entity @s Pos[2] 100
scoreboard players operation #temp ActionTime -= #temp MirrorZ
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #temp MirrorZ -= #temp ActionTime
execute at @s run particle minecraft:bubble_pop ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp MirrorZ