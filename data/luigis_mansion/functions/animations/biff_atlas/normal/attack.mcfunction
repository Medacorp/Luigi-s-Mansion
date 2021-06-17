teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,0.0f,0.01f],LeftArm:[90.0f,0.0f,0.01f],Head:[10.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 36
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 36
execute store result score #temp Time run data get entity @e[tag=this_model,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=5..10}] store result entity @e[tag=this_model,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=10..}] AnimationProg 0