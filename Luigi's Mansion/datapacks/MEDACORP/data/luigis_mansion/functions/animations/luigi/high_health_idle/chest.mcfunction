scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=45}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players set #temp Time -10
execute if entity @s[scores={AnimationProgress=45}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProgress=76}] store result entity @s Pose.Head[1] float 1 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time
execute at @s[scores={AnimationProgress=45..75}] run teleport @s ^ ^ ^0.125
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0