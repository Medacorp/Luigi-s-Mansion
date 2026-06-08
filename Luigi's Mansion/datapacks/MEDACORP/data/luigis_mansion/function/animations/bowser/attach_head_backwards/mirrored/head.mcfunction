scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=16..25}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=26..30}] run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.closed_eyes
execute if entity @s[scores={AnimationProgress=11}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0