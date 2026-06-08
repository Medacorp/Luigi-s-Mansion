scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 700
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 130
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=51..60}] AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment