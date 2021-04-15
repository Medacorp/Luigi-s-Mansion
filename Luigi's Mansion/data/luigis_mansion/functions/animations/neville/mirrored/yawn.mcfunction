execute at @s run teleport @e[tag=this_neville_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-50.0f,0.01f,0.0f],LeftArm:[-10.0f,-20.0f,0.01f],Head:[10.0f,0.01f,-20.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_neville_body,limit=1] {Pose:{Head:[-40.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..60}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..60}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=31..60}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..30}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..60}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
scoreboard players set @s[scores={AnimationProg=60}] AnimationProg 0