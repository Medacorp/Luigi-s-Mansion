scoreboard players add @s AnimationProg 1
teleport @s[scores={AnimationProg=1..20}] ^ ^-0.01 ^0.03
teleport @s[scores={AnimationProg=81..100}] ^ ^0.01 ^-0.03
execute at @s run teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,0.0f,0.01f],LeftArm:[-90.0f,0.0f,0.01f],Head:[0.01f,0.0f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=81..100}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=81..100}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 3
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 1
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..50}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=51..60}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=81..100}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 3
scoreboard players set @s[scores={AnimationProg=100..}] AnimationProg 0