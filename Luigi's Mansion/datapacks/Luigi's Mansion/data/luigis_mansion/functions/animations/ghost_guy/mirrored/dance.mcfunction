scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-70.0f,90.0f,0.0f],LeftArm:[-70.0f,-90.0f,0.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 8
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=4..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0