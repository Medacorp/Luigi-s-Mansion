scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-3 ^2
execute at @s positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.7 ^-0.6
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0