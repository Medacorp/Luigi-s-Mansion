scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=20..25}] run scoreboard players remove @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=30..35}] run scoreboard players add @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=20..25}] run scoreboard players add @s AnimationRotationY 140
execute if entity @s[scores={AnimationProgress=30..35}] run scoreboard players remove @s AnimationRotationY 140
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.bananas
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0