scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..30}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationX 120
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 120
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
data modify entity @s[scores={AnimationProgress=40}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0