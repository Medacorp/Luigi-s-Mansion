teleport @s ^ ^ ^0.4
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-160.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 28
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 28
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..7}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 20
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 20
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0