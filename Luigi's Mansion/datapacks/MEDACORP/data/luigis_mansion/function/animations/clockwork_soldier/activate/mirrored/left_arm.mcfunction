scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 80
scoreboard players remove @s[scores={AnimationProgress=61..70}] AnimationRotationX 80
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0