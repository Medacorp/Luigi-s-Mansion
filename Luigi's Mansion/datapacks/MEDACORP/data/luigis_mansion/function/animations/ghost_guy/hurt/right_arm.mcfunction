scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
scoreboard players add @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=2..3}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=4}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0