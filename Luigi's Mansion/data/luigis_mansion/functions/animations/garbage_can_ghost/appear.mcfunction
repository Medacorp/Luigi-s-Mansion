scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-40.0f,20.0f,-176.0f],LeftArm:[-40.0f,-20.0f,-176.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1..11}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProg=12..13}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProg=14..15}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 16
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..11}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProg=12..13}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProg=14..15}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 16
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=19}] AnimationProg 0