scoreboard players add @s AnimationProgress 1
teleport @s ^0.13 ^-0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 0
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.closed
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0