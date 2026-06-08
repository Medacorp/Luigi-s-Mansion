scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationX 250
scoreboard players remove @s[scores={AnimationProgress=4..6}] AnimationRotationX 250
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.food
data modify entity @s[scores={AnimationProgress=3}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0