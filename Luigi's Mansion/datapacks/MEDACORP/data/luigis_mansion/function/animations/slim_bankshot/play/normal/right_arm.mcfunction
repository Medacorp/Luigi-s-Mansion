scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 450
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=38..42}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=55..60}] run scoreboard players add @s AnimationRotationX 70
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0