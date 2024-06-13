scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
teleport @s[scores={AnimationProgress=3..7}] ~ ~0.05 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0