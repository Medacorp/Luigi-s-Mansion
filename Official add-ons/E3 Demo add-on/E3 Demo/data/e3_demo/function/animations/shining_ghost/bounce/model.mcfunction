scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 45
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0