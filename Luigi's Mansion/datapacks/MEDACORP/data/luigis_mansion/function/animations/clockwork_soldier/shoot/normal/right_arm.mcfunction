scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..15}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=26..40}] run scoreboard players remove @s AnimationRotationX 50
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0