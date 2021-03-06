teleport @s ~ ~-0.35 ~ ~ ~
teleport @e[tag=this_model,tag=body,limit=1] ~ ~-0.9 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-20.0f,0.01f,0.0f],LeftArm:[-10.0f,-0.01f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[-3.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=6..15}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=6..15}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=16..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=11..14}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=15..18}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0
scoreboard players reset #temp Time