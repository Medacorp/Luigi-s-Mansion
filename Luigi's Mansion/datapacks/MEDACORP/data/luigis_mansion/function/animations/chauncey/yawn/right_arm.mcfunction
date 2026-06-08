scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 700
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 130
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0
execute unless score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute unless score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment