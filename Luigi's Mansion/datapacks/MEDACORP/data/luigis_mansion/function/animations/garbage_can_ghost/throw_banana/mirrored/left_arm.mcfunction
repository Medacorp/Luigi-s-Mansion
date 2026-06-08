scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
scoreboard players remove @s[scores={AnimationProgress=20..25}] AnimationRotationX 70
scoreboard players add @s[scores={AnimationProgress=30..35}] AnimationRotationX 70
scoreboard players add @s[scores={AnimationProgress=20..25}] AnimationRotationY 140
scoreboard players remove @s[scores={AnimationProgress=30..35}] AnimationRotationY 140
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.bananas
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0