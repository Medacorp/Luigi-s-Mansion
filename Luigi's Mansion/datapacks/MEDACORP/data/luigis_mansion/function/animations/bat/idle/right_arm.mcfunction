scoreboard players add @s AnimationProgress 1
teleport @s ^0.13 ^0.3 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.closed
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0