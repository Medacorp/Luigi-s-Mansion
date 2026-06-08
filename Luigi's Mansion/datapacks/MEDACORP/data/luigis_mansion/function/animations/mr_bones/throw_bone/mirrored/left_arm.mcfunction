scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..30}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationX 120
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
data modify entity @s[scores={AnimationProgress=40}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0