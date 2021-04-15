teleport @s ~ ~-0.15 ~ ~ ~
teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.7 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.01f,0.0f],LeftArm:[0.0f,-0.01f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_e_gadd_body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2] 10
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[2] 10
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0