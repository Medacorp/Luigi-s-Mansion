scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-120.0f,0.0f,0.0f],LeftArm:[-120.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=21..30}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=21..22}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=24..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=29..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=30}] AnimationProg 0