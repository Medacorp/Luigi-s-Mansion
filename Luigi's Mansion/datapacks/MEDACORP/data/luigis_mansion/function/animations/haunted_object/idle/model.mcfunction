
data merge entity @s {Pose:{Head:[0.0f,0.01f,0.0f]}}
data merge entity @s[tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
data modify entity @s Pose.Head[0] set from storage luigis_mansion:data ghost.rotation[1]