scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{LeftArm:[-160.0f,0.0f,0.0f],RightArm:[-60.0f,0.0f,0.0f],Head:[-20.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 10
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0