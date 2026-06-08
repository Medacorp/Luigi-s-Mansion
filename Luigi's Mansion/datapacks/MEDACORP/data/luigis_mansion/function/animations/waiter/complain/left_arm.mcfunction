scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players remove @s AnimationRotationZ 10
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.food
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0