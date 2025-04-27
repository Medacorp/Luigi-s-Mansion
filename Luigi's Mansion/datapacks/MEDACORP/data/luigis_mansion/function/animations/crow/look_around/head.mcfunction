scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=36..}] ^ ^ ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=31..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=51..55}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0
scoreboard players reset #temp Time