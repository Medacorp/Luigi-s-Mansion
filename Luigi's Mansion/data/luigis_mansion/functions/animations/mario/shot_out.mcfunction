teleport @s[scores={AnimationProg=11..20}] ~ ~-0.15 ~
execute at @s run teleport @e[tag=this_mario_body,limit=1] ^ ^ ^-0.55 ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[90.0f,0.01f,0.0f],LeftArm:[90.0f,-0.01f,0.0f],Head:[90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mario_body,limit=1] {Pose:{RightArm:[90.0f,0.0f,0.01f],LeftArm:[90.0f,0.0f,0.01f],Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 17
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 17
execute store result score #temp Time run data get entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0