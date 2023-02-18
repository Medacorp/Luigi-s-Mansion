scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-40.0f,20.0f,0.0f],LeftArm:[-50.0f,10.0f,60.0f]}}
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=20..29}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProgress=1..19}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=20..29}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProgress=20..29}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=30..34}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=35..39}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=20..25}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 7
execute if entity @s[scores={AnimationProgress=30..35}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 7
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProgress=20..25}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 14
execute if entity @s[scores={AnimationProgress=30..35}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 14
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0