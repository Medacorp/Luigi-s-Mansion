scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -600
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 180
scoreboard players add @s[scores={AnimationProgress=15..20}] AnimationRotationX 360
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
execute if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.big_equipment