data merge entity @s {Pose:{Head:[-110.0f,0.0f,-90.0f]}}
data modify entity @s Pose.Head[1] set from entity @e[tag=this_entity,limit=1] Rotation[1]