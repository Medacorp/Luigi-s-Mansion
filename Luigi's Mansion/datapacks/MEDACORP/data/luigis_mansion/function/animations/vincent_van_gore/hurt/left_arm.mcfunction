scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=5..8}] AnimationRotationY 20
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0