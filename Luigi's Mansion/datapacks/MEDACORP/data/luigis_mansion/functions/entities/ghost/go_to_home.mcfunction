execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @s[scores={HomeRotation=-2147483648..}] store result entity @s Rotation[0] double 1 run scoreboard players get @s HomeRotation