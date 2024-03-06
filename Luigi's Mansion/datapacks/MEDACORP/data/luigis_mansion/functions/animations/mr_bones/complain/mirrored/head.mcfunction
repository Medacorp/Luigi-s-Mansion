scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.6 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-140.0f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=10..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0