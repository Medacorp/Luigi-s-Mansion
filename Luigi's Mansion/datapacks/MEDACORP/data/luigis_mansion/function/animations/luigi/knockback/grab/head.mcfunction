scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1..16}] run scoreboard players set @s AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=16}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0