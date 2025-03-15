scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-60.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 100
execute if entity @s[scores={AnimationProgress=1..180}] store result entity @s Pose.Head[0] float 0.01 run scoreboard players remove #temp Time 675
execute if entity @s[scores={AnimationProgress=181..200}] store result entity @s Pose.Head[0] float 0.01 run scoreboard players add #temp Time 675
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=240..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment