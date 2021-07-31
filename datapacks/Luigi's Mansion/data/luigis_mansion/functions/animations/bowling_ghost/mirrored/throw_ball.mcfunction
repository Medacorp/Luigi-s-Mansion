scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-45.0f,-30.0f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProg=4..6}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProg=7..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 15
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 17
execute if entity @s[scores={AnimationProg=4..6}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 17
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 15
execute store result score #temp Time run data get entity @s Pose.RighArm[1]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProg=4..6}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 30
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=7..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 17
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0