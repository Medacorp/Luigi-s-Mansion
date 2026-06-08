scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.screaming