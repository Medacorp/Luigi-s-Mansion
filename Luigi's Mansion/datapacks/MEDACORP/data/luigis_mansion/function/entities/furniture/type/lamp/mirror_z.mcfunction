scoreboard players operation #temp MirrorZ = @s MirrorZ
scoreboard players operation #temp MirrorZ *= #100 Constants
scoreboard players add #temp MirrorZ 50
execute store result score #temp ActionTime run data get entity @s Pos[2] 100
scoreboard players operation #temp ActionTime -= #temp MirrorZ
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #temp MirrorZ -= #temp ActionTime
execute at @s run function luigis_mansion:entities/furniture/type/lamp/light
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp MirrorZ