#X=cos(y)cos(z)
scoreboard players operation #temp2 Time = #cosy Time
scoreboard players operation #temp2 Time *= #cosz Time
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation #temp2 Time /= #1000 Constants

#Y=-sin(z)cos(y)
scoreboard players operation #temp2 Time = #sinz Time
scoreboard players operation #temp2 Time *= #-1 Constants
scoreboard players operation #temp2 Time *= #cosy Time
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation #temp2 Time /= #1000 Constants

#Z=sin(y)
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #siny Time

execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run teleport @s ~ ~ ~ ~ ~
execute store result score #temp2 Time run data get entity @s Rotation[0] 1000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation #temp2 Time += #temp Time