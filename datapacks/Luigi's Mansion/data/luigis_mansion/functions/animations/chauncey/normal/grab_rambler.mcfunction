teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-60.0f,0.0f,0.01f],LeftArm:[-60.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=15..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=15..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 36
execute if entity @s[scores={AnimationProg=15}] run function luigis_mansion:entities/chauncey/grab_rambler
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0