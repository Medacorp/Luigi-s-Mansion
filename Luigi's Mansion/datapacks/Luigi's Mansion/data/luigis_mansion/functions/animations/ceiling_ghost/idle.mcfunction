scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,-180.0f]}}
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0