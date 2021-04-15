teleport @e[tag=this_melody_pianissima_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-110.0f,-20.0f,0.01f],LeftArm:[-70.0f,30.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_melody_pianissima_body,limit=1] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=4..8}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=4..8}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProg=10..}] AnimationProg 0