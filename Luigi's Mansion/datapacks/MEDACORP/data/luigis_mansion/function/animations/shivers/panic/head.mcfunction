scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 60
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
data modify entity @s[scores={AnimationProgress=11}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.screaming