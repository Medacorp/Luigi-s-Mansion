scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0