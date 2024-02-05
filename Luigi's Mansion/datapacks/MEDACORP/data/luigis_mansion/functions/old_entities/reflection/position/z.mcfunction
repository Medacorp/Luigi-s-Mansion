scoreboard players operation #temp ActionTime = #temp HomeZ
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime