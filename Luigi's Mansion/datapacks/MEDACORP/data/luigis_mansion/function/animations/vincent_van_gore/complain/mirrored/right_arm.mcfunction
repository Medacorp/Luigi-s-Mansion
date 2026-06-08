scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0