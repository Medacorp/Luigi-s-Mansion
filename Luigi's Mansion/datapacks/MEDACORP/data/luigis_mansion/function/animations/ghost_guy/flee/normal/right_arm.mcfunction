scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationX 150
scoreboard players remove @s[scores={AnimationProgress=3..6}] AnimationRotationX 150
scoreboard players add @s[scores={AnimationProgress=7..8}] AnimationRotationX 150
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0