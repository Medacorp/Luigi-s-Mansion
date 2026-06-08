scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=20..24}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=25..29}] run scoreboard players add @s AnimationRotationY 50
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0