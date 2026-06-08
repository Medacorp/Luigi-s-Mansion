scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationY 60
execute if entity @s[scores={AnimationProgress=3..6}] run scoreboard players add @s AnimationRotationY 60
execute if entity @s[scores={AnimationProgress=7..8}] run scoreboard players remove @s AnimationRotationY 60
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0