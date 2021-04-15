teleport @e[tag=this_chauncey_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-60.0f,70.0f,0.01f],LeftArm:[-60.0f,-70.0f,0.01f],Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_chauncey_body,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 5
scoreboard players set @s[scores={AnimationProg=10..}] AnimationProg 0