scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=60}] item merge from entity @s item.components."minecraft:custom_data".model_data.happy
scoreboard players remove @s[scores={AnimationProgress=61..80}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0