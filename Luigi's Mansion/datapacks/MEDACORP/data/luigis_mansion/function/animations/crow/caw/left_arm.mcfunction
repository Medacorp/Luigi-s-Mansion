scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..}] ^ ^ ^0.1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=41..45}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=46..50}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0
scoreboard players reset #temp Time