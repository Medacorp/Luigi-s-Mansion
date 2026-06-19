scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=5..12}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationZ 10
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.food
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0