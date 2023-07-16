execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
tag @s remove burning
tag @s remove burn
teleport @s[scores={PathStep=..93}] 682 11.6 0
teleport @s[scores={PathStep=93..}] 738 11.6 61
scoreboard players set @s[scores={PathStep=93..}] PathStep 50