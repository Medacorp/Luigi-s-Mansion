scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.6 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,20.0f,-160.0f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0