scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,5.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-175.0f]}}
execute at @s[scores={AnimationProg=45..75}] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^0.0625
scoreboard players set @s[scores={AnimationProg=140}] AnimationProg 0