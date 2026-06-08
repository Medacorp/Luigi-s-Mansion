scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationY 40
scoreboard players add @s[scores={AnimationProgress=6..15}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=16..20}] AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute unless score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute unless score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment