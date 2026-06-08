scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 360
scoreboard players remove @s[scores={AnimationProgress=1..120}] AnimationRotationX 180
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=121..130}] AnimationRotationX 180
scoreboard players set @s[scores={AnimationProgress=180..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment