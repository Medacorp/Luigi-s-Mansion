scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-1 ^0.5
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,7.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0