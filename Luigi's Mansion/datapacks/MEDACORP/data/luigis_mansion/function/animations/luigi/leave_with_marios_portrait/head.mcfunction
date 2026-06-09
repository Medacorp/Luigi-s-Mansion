scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.happy
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0