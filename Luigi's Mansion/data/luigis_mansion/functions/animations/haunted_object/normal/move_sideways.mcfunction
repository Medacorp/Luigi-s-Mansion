scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.01f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0