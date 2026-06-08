scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationY 5
scoreboard players add @s[scores={AnimationProgress=21..60}] AnimationRotationY 5
scoreboard players remove @s[scores={AnimationProgress=61..80}] AnimationRotationY 5
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0