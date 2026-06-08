scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationX 10
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.banana_peel
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.bananas
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0