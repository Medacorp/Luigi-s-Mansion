scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -600
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationX 80
scoreboard players remove @s[scores={AnimationProgress=4..7}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=9..10}] AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.big_equipment