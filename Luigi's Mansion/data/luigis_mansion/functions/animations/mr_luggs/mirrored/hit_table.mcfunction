teleport @e[tag=this_mr_luggs_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-70.0f,10.0f,0.0f],LeftArm:[-70.0f,-10.0f,0.0f],Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_luggs_body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=10..15}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=30..35}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=10..15}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=30..35}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0