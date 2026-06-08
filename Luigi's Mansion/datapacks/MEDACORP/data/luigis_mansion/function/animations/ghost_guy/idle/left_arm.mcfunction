scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=7..10}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=14..15}] run scoreboard players add @s AnimationRotationX 10
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0