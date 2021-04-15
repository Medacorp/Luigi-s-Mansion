execute at @s run teleport @e[tag=this_lydia_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-70.0f,0.01f,0.0f],LeftArm:[-70.0f,50.01f,-60.0f],Head:[0.0f,-40.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_lydia_body,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=21..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=26..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=31..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=41..45}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=46..50}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=51..55}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=56..60}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=21..25}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=26..30}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=31..35}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..45}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=46..50}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=51..55}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=56..60}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 6
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=15..20}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 11
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=11..20}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=21..25}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=26..30}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=31..35}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=41..45}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=46..50}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=51..55}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=56..60}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=60}] AnimationProg 0