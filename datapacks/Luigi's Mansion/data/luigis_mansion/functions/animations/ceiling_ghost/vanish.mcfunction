scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=8..17}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 11
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=8..17}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 13
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=8..17}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 13
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0