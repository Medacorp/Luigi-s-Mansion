#X=-sin(x)sin(z)
scoreboard players operation #furniture2 Time = #sinx Time
scoreboard players operation #furniture2 Time *= #sinz Time
scoreboard players operation #furniture2 Time /= #1000 Constants
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation #furniture2 Time *= #-1 Constants

#Y=-sin(x)cos(z)
scoreboard players operation #furniture2 Time = #sinx Time
scoreboard players operation #furniture2 Time *= #cosz Time
scoreboard players operation #furniture2 Time /= #1000 Constants
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation #furniture2 Time *= #-1 Constants

#Z=cos(x)
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #cosx Time

execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run teleport @s ~ ~ ~ ~ ~
execute store result score #furniture2 Time run data get entity @s Rotation[0] 1000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation #furniture2 Time += #furniture Time