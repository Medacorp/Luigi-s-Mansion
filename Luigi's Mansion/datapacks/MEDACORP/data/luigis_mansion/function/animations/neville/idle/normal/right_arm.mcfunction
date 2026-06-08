scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=21..60}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=61..80}] AnimationRotationX 5
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0