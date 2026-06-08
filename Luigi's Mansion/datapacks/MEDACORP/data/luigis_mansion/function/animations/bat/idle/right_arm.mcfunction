scoreboard players add @s AnimationProgress 1
teleport @s ^0.13 ^0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.closed
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0