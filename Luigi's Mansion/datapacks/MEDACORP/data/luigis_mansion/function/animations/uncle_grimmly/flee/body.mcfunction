scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[70.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0