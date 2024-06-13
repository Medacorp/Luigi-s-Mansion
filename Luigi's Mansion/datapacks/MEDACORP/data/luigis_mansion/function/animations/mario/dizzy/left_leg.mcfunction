scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-0.76 ^-0.16
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-5.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0