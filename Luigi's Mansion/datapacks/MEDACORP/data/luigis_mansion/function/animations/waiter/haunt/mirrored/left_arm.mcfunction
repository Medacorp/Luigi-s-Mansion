scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=5..12}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 10
execute unless data storage luigis_mansion:data ghost{tags:["dropped_off_food"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.food
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0