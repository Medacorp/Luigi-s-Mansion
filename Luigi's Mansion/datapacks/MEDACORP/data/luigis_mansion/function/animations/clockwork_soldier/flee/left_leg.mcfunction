scoreboard players add @s AnimationProgress 1
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.no_legs
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0