scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=3..4}] run scoreboard players add @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0