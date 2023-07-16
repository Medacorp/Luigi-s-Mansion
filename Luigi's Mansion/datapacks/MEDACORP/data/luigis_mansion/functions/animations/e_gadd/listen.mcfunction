teleport @s ~ ~-0.35 ~ ~ ~
teleport @e[tag=this_model,tag=body,limit=1] ~ ~-0.9 ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[0.0f,0.01f,0.0f],LeftArm:[0.0f,-0.01f,0.0f],Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.RightArm[2] float 0.1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[2] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.LeftArm[2] float 0.1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
scoreboard players reset #temp Time