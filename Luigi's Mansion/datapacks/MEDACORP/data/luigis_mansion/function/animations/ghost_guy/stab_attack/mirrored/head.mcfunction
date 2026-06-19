scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=20..24}] AnimationRotationY 50
scoreboard players remove @s[scores={AnimationProgress=25..29}] AnimationRotationY 50
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0