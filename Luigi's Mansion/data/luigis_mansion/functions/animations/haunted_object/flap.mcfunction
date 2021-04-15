scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.01f,0.0f],LeftArm:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProg=2..3}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=4}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 18
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=2..3}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProg=4}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=4}] AnimationProg 0
data modify entity @s Pose.RightArm[0] set from entity @s Rotation[1]
data modify entity @s Pose.LeftArm[0] set from entity @s Rotation[1]