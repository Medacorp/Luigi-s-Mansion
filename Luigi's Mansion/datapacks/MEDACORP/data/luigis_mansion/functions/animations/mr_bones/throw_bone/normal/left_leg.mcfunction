scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
teleport @s ~ ~-0.6 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0