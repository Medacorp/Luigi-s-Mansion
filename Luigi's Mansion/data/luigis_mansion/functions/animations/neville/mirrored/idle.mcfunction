execute at @s run teleport @e[tag=this_neville_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-50.0f,0.01f,0.0f],LeftArm:[-10.0f,-20.0f,0.01f],Head:[10.0f,0.01f,-20.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_neville_body,limit=1] {Pose:{Head:[-40.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=21..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=21..60}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=21..60}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @e[tag=this_neville_body,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_neville_body,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=21..60}] store result entity @e[tag=this_neville_body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=61..80}] store result entity @e[tag=this_neville_body,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players set @s[scores={AnimationProg=80}] AnimationProg 0