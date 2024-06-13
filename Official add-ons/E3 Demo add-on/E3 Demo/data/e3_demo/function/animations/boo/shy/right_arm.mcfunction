data merge entity @s {Pose:{Head:[-110.0f,0.0f,90.0f]}}
execute store result entity @s Pose.Head[1] float -0.01 run data get entity @e[tag=this_entity,limit=1] Rotation[1] 100