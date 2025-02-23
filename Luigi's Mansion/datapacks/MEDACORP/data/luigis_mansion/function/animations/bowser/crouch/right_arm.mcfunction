scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-2.56 ^2.547
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0