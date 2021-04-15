teleport @e[tag=this_chauncey_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-40.0f,-10.0f,0.0f],LeftArm:[-160.0f,-60.0f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_chauncey_body,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 12
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 8
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=11..30}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=11..30}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=30}] AnimationProg 0