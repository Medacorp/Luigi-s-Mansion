scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.screaming