scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-4 ^2.667
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0