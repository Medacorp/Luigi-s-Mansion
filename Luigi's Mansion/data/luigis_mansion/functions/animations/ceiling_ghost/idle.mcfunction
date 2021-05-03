scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,-180.0f]}}
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0