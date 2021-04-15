scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-10.0f,0.01f,0.0f],LeftArm:[-10.0f,-0.01f,0.0f],Head:[20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_e_gadd_body,limit=1] {Pose:{RightArm:[-90.0f,5.0f,0.01f],LeftArm:[-90.0f,-5.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
teleport @s[scores={AnimationProg=1..10}] ~ ~-0.65 ~ ~ ~
execute if entity @s[scores={AnimationProg=1..10}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.2 ~ ~ ~
teleport @s[scores={AnimationProg=11}] ~ ~-0.6 ~ ~ ~
execute if entity @s[scores={AnimationProg=11}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.15 ~ ~ ~
teleport @s[scores={AnimationProg=12}] ~ ~-0.55 ~ ~ ~
execute if entity @s[scores={AnimationProg=12}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.1 ~ ~ ~
teleport @s[scores={AnimationProg=13}] ~ ~-0.5 ~ ~ ~
execute if entity @s[scores={AnimationProg=13}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.05 ~ ~ ~
teleport @s[scores={AnimationProg=14}] ~ ~-0.45 ~ ~ ~
execute if entity @s[scores={AnimationProg=14}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1 ~ ~ ~
teleport @s[scores={AnimationProg=15}] ~ ~-0.4 ~ ~ ~
execute if entity @s[scores={AnimationProg=15}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.95 ~ ~ ~
teleport @s[scores={AnimationProg=16}] ~ ~-0.35 ~ ~ ~
execute if entity @s[scores={AnimationProg=16}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.9 ~ ~ ~
teleport @s[scores={AnimationProg=17}] ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProg=17}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.85 ~ ~ ~
teleport @s[scores={AnimationProg=18}] ~ ~-0.25 ~ ~ ~
execute if entity @s[scores={AnimationProg=18}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.8 ~ ~ ~
teleport @s[scores={AnimationProg=19}] ~ ~-0.2 ~ ~ ~
execute if entity @s[scores={AnimationProg=19}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.75 ~ ~ ~
teleport @s[scores={AnimationProg=20}] ~ ~-0.15 ~ ~ ~
execute if entity @s[scores={AnimationProg=20}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.7 ~ ~ ~
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 22
execute store result score #temp Time run data get entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[1] 10
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.RightArm[1] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[1] 10
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_e_gadd_body,limit=1] Pose.LeftArm[1] float 0.1 run scoreboard players add #temp Time 5
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0