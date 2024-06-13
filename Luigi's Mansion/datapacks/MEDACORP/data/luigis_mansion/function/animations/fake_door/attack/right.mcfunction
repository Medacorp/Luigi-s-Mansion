scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,-90.0f,0.0f]}}
execute at @s[scores={AnimationProgress=11..58}] run teleport @s ^ ^ ^0.101
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProgress=45..74}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0