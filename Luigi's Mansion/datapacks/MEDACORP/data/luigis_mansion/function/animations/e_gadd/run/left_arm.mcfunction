scoreboard players add @s AnimationProgress 1
teleport @s ^ ^ ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[80.0f,0.0f,-10.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
scoreboard players reset #temp Time