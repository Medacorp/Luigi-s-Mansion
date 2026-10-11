scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 500
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0