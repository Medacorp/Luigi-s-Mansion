data merge entity @s {Pose:{RightArm:[-110.0f,0.0f,90.0f],LeftArm:[-110.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.01f]}}
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.visible
data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.visible