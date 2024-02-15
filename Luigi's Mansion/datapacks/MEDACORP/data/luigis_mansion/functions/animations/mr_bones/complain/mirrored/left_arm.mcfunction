scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,-20.0f,160.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=15..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 14
execute if entity @s[scores={AnimationProgress=21..25}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 14
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0