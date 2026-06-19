scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0