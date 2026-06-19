scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 20
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0