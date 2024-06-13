scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-0.05 ^0.15
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=3..4}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=6..7}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=8..9}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 10
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
scoreboard players reset #temp Time