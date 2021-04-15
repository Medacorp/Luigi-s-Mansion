teleport @e[tag=this_spooky_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-60.0f,0.0f,0.01f],LeftArm:[-60.0f,0.0f,0.01f],Head:[78.0f,0.01f,-70.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_spooky_body,limit=1] {Pose:{Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 17
execute if entity @s[scores={AnimationProg=13..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=56..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 18
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 18
execute store result score #temp Time run data get entity @e[tag=this_spooky_body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..39}] store result entity @e[tag=this_spooky_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=40}] store result entity @e[tag=this_spooky_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 28
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 10
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=60..}] AnimationProg 0