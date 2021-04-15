teleport @e[tag=this_chauncey_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[70.0f,0.0f,0.01f],LeftArm:[70.0f,0.0f,0.01f],Head:[70.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_chauncey_body,limit=1] {Pose:{Head:[70.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 13
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 13
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=31..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=36..45}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=46..55}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=56..65}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=66..75}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=76..80}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_chauncey_body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_chauncey_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
scoreboard players set @s[scores={AnimationProg=80..}] AnimationProg 0