scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=45}] AnimationRotationY -300
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=45}] AnimationRotationY 300
scoreboard players set @s[scores={AnimationProgress=76}] AnimationRotationY 0
execute at @s[scores={AnimationProgress=45..75}] run teleport @s ^ ^ ^0.125
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0