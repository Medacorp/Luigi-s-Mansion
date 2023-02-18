scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-100.0f,-90.0f,-90.0f],LeftArm:[-100.0f,90.0f,90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0