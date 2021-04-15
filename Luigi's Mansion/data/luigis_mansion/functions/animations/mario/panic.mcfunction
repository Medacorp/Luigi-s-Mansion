teleport @e[tag=this_mario_body,limit=1] ~ ~-0.55 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-155.0f,0.01f,0.0f],LeftArm:[-155.0f,-0.01f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mario_body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0