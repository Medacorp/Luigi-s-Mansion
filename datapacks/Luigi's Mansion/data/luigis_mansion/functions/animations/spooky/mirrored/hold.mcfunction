teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
data merge entity @s {Pose:{Head:[78.0f,0.0f,70.0f]}}
data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[90.0f,0.0f,0.0f]}}
data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-30.0f,0.0f,0.01f]}}
data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-30.0f,0.0f,0.01f]}}