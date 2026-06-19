scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=16..25}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=26..30}] AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.closed_eyes
execute if entity @s[scores={AnimationProgress=11}] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0