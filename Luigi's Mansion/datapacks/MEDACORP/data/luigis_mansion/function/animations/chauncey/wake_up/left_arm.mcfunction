scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=11..16}] ~ ~-0.01 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-130.0f,10.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment