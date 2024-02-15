scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time