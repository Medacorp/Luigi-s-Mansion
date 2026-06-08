scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=1..30}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=31..60}] AnimationRotationY 10
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0