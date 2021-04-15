scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,0.01f,0.0f],LeftArm:[-90.0f,-0.01f,0.0f],Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_e_gadd_body,limit=1] {Pose:{RightArm:[-90.0f,5.0f,0.01f],LeftArm:[-90.0f,-5.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
teleport @s[scores={AnimationProg=1}] ~ ~-0.15 ~ ~ ~
execute if entity @s[scores={AnimationProg=1}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.7 ~ ~ ~
teleport @s[scores={AnimationProg=2}] ~ ~-0.2 ~ ~ ~
execute if entity @s[scores={AnimationProg=2}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.75 ~ ~ ~
teleport @s[scores={AnimationProg=3}] ~ ~-0.25 ~ ~ ~
execute if entity @s[scores={AnimationProg=3}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.8 ~ ~ ~
teleport @s[scores={AnimationProg=4}] ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProg=4}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.85 ~ ~ ~
teleport @s[scores={AnimationProg=5}] ~ ~-0.35 ~ ~ ~
execute if entity @s[scores={AnimationProg=5}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.9 ~ ~ ~
teleport @s[scores={AnimationProg=6}] ~ ~-0.4 ~ ~ ~
execute if entity @s[scores={AnimationProg=6}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-0.95 ~ ~ ~
teleport @s[scores={AnimationProg=7}] ~ ~-0.45 ~ ~ ~
execute if entity @s[scores={AnimationProg=7}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1 ~ ~ ~
teleport @s[scores={AnimationProg=8}] ~ ~-0.5 ~ ~ ~
execute if entity @s[scores={AnimationProg=8}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.05 ~ ~ ~
teleport @s[scores={AnimationProg=9}] ~ ~-0.55 ~ ~ ~
execute if entity @s[scores={AnimationProg=9}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.1 ~ ~ ~
teleport @s[scores={AnimationProg=10}] ~ ~-0.6 ~ ~ ~
execute if entity @s[scores={AnimationProg=10}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.15 ~ ~ ~
teleport @s[scores={AnimationProg=11..20}] ~ ~-0.65 ~ ~ ~
execute if entity @s[scores={AnimationProg=11..20}] run teleport @e[tag=this_e_gadd_body,limit=1] ~ ~-1.2 ~ ~ ~
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 8
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 8
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0