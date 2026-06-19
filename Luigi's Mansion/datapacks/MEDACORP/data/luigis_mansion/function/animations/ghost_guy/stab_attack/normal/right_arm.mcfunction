scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=20..24}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=25..29}] AnimationRotationX 270
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 90
scoreboard players remove @s[scores={AnimationProgress=25..29}] AnimationRotationY 180
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0