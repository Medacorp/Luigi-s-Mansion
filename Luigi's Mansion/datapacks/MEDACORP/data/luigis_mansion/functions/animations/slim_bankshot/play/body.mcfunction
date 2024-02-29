scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[10.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0