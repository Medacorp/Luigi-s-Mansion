scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-40.0f,0.0f,10.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=4..6}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0
scoreboard players reset #temp Time