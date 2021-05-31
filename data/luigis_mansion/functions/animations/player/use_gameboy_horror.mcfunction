scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightLeg:[0.0f,0.01f,0.0f],LeftLeg:[0.0f,-0.01f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[-40.0f,-25.0f,0.01f],LeftArm:[-40.0f,25.0f,0.01f],Head:[40.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 10
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=4..8}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0