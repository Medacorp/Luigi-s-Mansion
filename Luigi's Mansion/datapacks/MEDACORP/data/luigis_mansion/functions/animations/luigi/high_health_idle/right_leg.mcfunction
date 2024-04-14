scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,5.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-175.0f]}}
execute at @s[scores={AnimationProgress=45..75}] unless score #mirrored Selected matches 1 run teleport @s ^ ^ ^0.175
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0