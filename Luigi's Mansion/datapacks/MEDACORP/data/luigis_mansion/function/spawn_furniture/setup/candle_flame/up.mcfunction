#X=sin(z)cos(x)-sin(x)sin(y)cos(z)
scoreboard players operation #furniture2 Time = #sinz Time
scoreboard players operation #furniture2 Time *= #cosx Time
scoreboard players operation #furniture2 Time /= #1000 Constants
scoreboard players operation #furniture3 Time = #sinx Time
scoreboard players operation #furniture3 Time *= #siny Time
scoreboard players operation #furniture3 Time /= #1000 Constants
scoreboard players operation #furniture3 Time *= #cosz Time
scoreboard players operation #furniture3 Time /= #1000 Constants
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation #furniture2 Time -= #furniture3 Time

#Y=cos(x)cos(z)-sin(x)sin(y)sin(z)
scoreboard players operation #furniture2 Time = #cosx Time
scoreboard players operation #furniture2 Time *= #cosz Time
scoreboard players operation #furniture2 Time /= #1000 Constants
scoreboard players operation #furniture3 Time = #sinx Time
scoreboard players operation #furniture3 Time *= #siny Time
scoreboard players operation #furniture3 Time /= #1000 Constants
scoreboard players operation #furniture3 Time *= #sinz Time
scoreboard players operation #furniture3 Time /= #1000 Constants
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation #furniture2 Time -= #furniture3 Time

#Z=sin(x)cos(y)
scoreboard players operation #furniture2 Time = #sinx Time
scoreboard players operation #furniture2 Time *= #cosy Time
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation #furniture2 Time /= #1000 Constants

execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run teleport @s ~ ~ ~ ~ ~
execute store result score #furniture2 Time run data get entity @s Rotation[0] 1000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation #furniture2 Time += #furniture Time