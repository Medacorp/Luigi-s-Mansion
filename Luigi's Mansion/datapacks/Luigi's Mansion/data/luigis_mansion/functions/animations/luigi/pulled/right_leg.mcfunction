teleport @s ~ ~-0.3 ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[70.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[70.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0