execute at @s run teleport @e[tag=this_lydia_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-70.0f,0.01f,0.0f],LeftArm:[-70.0f,50.01f,-60.0f],Head:[0.0f,-40.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_lydia_body,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0