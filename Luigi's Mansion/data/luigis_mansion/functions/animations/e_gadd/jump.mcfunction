teleport @s ~ ~-0.15 ~ ~ ~
teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.7 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.01f,0.0f],LeftArm:[0.0f,-0.01f,0.0f],Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_e_gadd_body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=26..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0