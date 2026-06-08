scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players remove @s AnimationRotationX 80
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0