#X=cos(z)
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #cosz Time

#Y=-sin(z)
scoreboard players operation #furniture2 Time = #sinz Time
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation #furniture2 Time *= #-1 Constants

#Z=sin(y)
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #siny Time

execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run teleport @s ~ ~ ~ ~ ~
execute store result score #furniture2 Time run data get entity @s Rotation[0] 1000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation #furniture2 Time += #furniture Time