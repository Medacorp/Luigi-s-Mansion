scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationY 1
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationY 1
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 1
execute unless score #mirrored Selected matches 1 run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0