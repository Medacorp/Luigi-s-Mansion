scoreboard players operation #temp MirrorZ = @e[tag=me,limit=1] MirrorZ
scoreboard players operation #temp MirrorZ *= #100 Constants
scoreboard players add #temp MirrorZ 50
execute store result score #temp ActionTime run data get entity @s Pos[2] 100
scoreboard players operation #temp ActionTime -= #temp MirrorZ
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #temp MirrorZ -= #temp ActionTime
execute store result entity @s Rotation[0] float -0.01 run data get entity @s Rotation[0] 100
execute at @s run teleport @s ~ ~ ~ ~-180 ~
execute at @s as @e[tag=me,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp MirrorX