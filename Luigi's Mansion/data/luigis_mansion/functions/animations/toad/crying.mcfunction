teleport @s ~ ~-0.75 ~ ~ ~
teleport @e[tag=this_toad_body,limit=1] ~ ~-1.25 ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-100.0f,-32.0f,0.01f],LeftArm:[-100.0f,32.0f,0.01f],Head:[40.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_toad_body,limit=1] {Pose:{RightArm:[-70.0f,0.0f,0.01f],LeftArm:[-70.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=11..15}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=11..15}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @e[tag=this_toad_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @e[tag=this_toad_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0