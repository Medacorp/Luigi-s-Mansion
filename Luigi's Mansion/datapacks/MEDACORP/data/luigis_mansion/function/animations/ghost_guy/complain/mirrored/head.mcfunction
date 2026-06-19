scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationY 60
scoreboard players add @s[scores={AnimationProgress=3..6}] AnimationRotationY 60
scoreboard players remove @s[scores={AnimationProgress=7..8}] AnimationRotationY 60
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
execute if data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0