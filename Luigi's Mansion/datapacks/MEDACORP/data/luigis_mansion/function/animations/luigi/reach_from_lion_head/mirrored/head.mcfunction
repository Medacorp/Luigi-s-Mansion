scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 360
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=6..15}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=16..20}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0