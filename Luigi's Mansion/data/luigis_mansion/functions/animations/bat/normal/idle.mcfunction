scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[180.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=18..23}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=38..40}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=40}] AnimationProg 0