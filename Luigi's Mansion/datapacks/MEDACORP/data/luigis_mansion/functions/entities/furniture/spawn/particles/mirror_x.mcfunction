scoreboard players operation #temp MirrorX = @e[tag=me,limit=1] MirrorX
scoreboard players operation #temp MirrorX *= #100 Constants
scoreboard players add #temp MirrorX 50
execute store result score #temp ActionTime run data get entity @s Pos[0] 100
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime
execute at @s as @e[tag=me,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp MirrorX