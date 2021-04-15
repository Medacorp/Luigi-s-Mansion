scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-40.0f,0.01f,0.0f],LeftArm:[-40.0f,-0.01f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_toad_body,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
teleport @s[scores={AnimationProg=1..2}] ~ ~-0.55 ~ ~ ~
execute if entity @s[scores={AnimationProg=1..2}] run teleport @e[tag=this_toad_body,limit=1] ~ ~-1.05 ~ ~ ~
teleport @s[scores={AnimationProg=3..7}] ~ ~-0.5 ~ ~ ~
execute if entity @s[scores={AnimationProg=3..7}] run teleport @e[tag=this_toad_body,limit=1] ~ ~-1 ~ ~ ~
teleport @s[scores={AnimationProg=8..10}] ~ ~-0.55 ~ ~ ~
execute if entity @s[scores={AnimationProg=8..10}] run teleport @e[tag=this_toad_body,limit=1] ~ ~-1.05 ~ ~ ~
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProg=10..}] AnimationProg 0