teleport @s ~ ~-0.2 ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0