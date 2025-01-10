scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-1.92 ^1.91
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 35
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0