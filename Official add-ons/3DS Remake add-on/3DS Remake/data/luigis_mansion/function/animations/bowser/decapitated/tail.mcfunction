scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-1.333 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-30.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0