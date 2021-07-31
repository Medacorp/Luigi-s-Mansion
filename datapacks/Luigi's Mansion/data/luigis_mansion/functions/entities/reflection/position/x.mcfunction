scoreboard players operation #temp ActionTime = #temp HomeX
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @e[tag=this_reflection,limit=1] Pos[0] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime