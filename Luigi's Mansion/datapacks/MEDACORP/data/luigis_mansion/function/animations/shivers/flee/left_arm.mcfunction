scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 20
execute if score #mirrored Selected matches 1 run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0