scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 50
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 50
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0