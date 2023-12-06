teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.25 ^-0.25 ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.45 ^-0.3 ^-0.2 ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.45 ^-0.3 ^-0.2 ~ ~
data merge entity @s {Pose:{Head:[50.0f,0.0f,0.01f]}}
data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[0.0f,7.0f,0.01f]}}
data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[0.0f,-7.0f,0.01f]}}
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default