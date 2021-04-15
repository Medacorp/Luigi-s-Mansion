scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_bones_body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=10..12}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=10..12}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=10..12}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_mr_bones_body,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=4..9}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=10..12}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_mr_bones_body,limit=1] Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=4..9}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=7..12}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_mr_bones_body,limit=1] Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=4..9}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=10..12}] store result entity @e[tag=this_mr_bones_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 2
teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.4 ~ ~ ~
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=9}] AnimationProg 0