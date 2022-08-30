execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
scoreboard players set @s Time 0
scoreboard players set @s Dialog 0
scoreboard players set @s[tag=!vanish] AnimationProg 0
scoreboard players set @s[tag=!vanish] ActionTime 0
tag @s remove lift_fail
tag @s remove lift_succeed
tag @s remove stretch_neck
tag @s remove angry
tag @s remove attack
tag @s remove laugh
tag @s remove knocked_back
tag @s remove knocked_out
tag @s remove hit_by_swinging_furniture