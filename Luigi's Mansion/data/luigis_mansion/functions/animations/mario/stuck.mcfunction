teleport @s[scores={AnimationProg=121..130}] ~ ~0.1 ~ ~ ~-9
teleport @s[scores={AnimationProg=131..140}] ~ ~-0.05 ~ ~ ~-9
execute at @s run teleport @e[tag=this_mario_body,limit=1] ^ ^ ^-0.55 ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-80.0f,0.01f,0.0f],LeftArm:[-80.0f,-0.01f,0.0f],Head:[90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mario_body,limit=1] {Pose:{RightArm:[70.0f,0.0f,0.01f],LeftArm:[70.0f,0.0f,0.01f],Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=81..90}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=91..100}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=121..140}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=61..70}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=71..80}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=101..110}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=111..120}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=121..140}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=121..140}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 45
execute store result score #temp Time run data get entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=61..70}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=71..80}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=101..110}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=111..120}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=121..140}] store result entity @e[tag=this_mario_body,limit=1] Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=61..70}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=91..100}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=101..110}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=121..140}] store result entity @e[tag=this_mario_body,limit=1] Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @e[tag=this_mario_body,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=121..140}] store result entity @e[tag=this_mario_body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 45
scoreboard players set @s[scores={AnimationProg=140}] AnimationProg 0