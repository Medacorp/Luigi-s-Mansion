execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute unless entity @s[scores={Dialog=40..100}] run scoreboard players set @s Dialog 0
scoreboard players set @s[scores={Dialog=40..100}] Dialog 99