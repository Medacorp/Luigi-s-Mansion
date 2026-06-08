scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=45}] unless score #mirrored Selected matches 1 run scoreboard players set @s AnimationRotationY -300
execute if entity @s[scores={AnimationProgress=45}] if score #mirrored Selected matches 1 run scoreboard players set @s AnimationRotationY 300
execute if entity @s[scores={AnimationProgress=76}] run execute at @s[scores={AnimationProgress=45..75}] run teleport @s ^ ^ ^0.125
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0