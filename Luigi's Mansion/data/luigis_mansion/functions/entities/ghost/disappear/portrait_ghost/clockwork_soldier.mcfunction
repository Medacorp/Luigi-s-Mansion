execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
tag @s remove windless
tag @s remove was_activated
tag @s remove complain
scoreboard players set @s Distance 0
scoreboard players set @s WaitTime 0