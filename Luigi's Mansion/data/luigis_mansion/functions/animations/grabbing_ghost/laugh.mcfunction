scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=5..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=5..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProg=31..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0