scoreboard players set @s AnimationProgress 0
scoreboard players set @s AnimationRotationX 0
scoreboard players set @s AnimationRotationY 0
scoreboard players set @s AnimationRotationZ 0
scoreboard players set @s[tag=flipped_gravity] AnimationRotationZ -1800
scoreboard players reset @s AnimationOldRotationX
scoreboard players reset @s AnimationOldRotationY
scoreboard players reset @s AnimationOldRotationZ
tag @s remove 2d
data modify entity @s transformation set value {translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.default