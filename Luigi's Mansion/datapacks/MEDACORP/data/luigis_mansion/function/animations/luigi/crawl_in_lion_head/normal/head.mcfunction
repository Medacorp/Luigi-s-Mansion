scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=81}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players add @s[scores={AnimationProgress=81..92}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=115..136}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=149..160}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80