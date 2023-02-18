scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-90.0f,0.0f,0.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=1..38}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=40..41}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 87
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=1..38}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=40..41}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 87
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..38}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=40..41}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 43
execute if entity @s[scores={AnimationProgress=60}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0