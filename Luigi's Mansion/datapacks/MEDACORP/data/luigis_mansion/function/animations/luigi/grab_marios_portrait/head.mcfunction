scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=60}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.happy
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players remove @s AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0