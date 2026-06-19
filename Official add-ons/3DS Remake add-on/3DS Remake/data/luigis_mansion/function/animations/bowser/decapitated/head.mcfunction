scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-1.333 ^0.667
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.decapitated
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0