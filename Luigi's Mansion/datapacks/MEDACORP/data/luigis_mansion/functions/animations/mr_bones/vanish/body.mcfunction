scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
teleport @e[tag=this_model,limit=1] ~ ~-0.6 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0