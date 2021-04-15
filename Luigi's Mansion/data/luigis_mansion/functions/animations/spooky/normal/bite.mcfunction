teleport @e[tag=this_spooky_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-30.0f,0.0f,0.01f],LeftArm:[-30.0f,0.0f,0.01f],Head:[90.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_spooky_body,limit=1] {Pose:{Head:[90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=10..15}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..18}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=10..15}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..18}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=4..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=10..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 14
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 14
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0