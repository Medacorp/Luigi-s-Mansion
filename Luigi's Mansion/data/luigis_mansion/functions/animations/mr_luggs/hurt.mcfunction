teleport @e[tag=this_mr_luggs_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,40.0f,0.01f],LeftArm:[-90.0f,-40.0f,0.01f],Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_luggs_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=3..6}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
scoreboard players set @s[scores={AnimationProg=8..}] AnimationProg 0