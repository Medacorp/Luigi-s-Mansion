scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.no_legs
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0