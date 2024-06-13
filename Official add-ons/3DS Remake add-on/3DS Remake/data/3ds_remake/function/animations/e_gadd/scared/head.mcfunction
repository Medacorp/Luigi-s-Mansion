scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=6}] ~ ~-0.05 ~ ~ ~
teleport @s[scores={AnimationProgress=7}] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=8}] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=10}] ~ ~-0.25 ~ ~ ~
teleport @s[scores={AnimationProgress=11..20}] ~ ~-0.3 ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=11..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
scoreboard players reset #temp Time