teleport @e[tag=this_mr_luggs_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,30.0f,0.0f],LeftArm:[-90.0f,-30.0f,0.0f],Head:[20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_luggs_body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=21..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=26..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0