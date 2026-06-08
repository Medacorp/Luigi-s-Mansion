scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
execute if entity @s[scores={AnimationProgress=3..5}] run scoreboard players add @s AnimationRotationX 250
execute if entity @s[scores={AnimationProgress=6..8}] run scoreboard players remove @s AnimationRotationX 250
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.food
data modify entity @s[scores={AnimationProgress=5}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0