scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=51..59}] AnimationRotationX 50
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0