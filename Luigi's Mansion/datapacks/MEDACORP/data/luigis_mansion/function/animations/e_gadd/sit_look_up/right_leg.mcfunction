teleport @s ~ ~-0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,15.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=31}] {Pose:{Head:[-90.0f,15.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 30