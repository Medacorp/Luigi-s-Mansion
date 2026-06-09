scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=1..16}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=16}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0