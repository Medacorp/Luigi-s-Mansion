scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-4 ^2.667
execute at @s positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.933 ^-0.8
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[80.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0