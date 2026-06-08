scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=3..4}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0