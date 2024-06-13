data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] Rotation[1]