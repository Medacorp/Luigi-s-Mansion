scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 450
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=38..42}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=55..60}] AnimationRotationX 70
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0