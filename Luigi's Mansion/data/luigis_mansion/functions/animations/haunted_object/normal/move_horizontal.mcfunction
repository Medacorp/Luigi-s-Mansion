scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0