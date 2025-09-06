scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=11..16}] ~ ~-0.01 ~
teleport @s[scores={AnimationProgress=21..26}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=31..36}] ~ ~-0.01 ~
execute at @s run teleport @s[scores={AnimationProgress=26..35}] ^ ^ ^0.01
execute at @s run teleport @s[scores={AnimationProgress=36..40}] ^ ^ ^-0.01
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=16..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=26..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 7
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=6}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.screaming
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=20}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=26}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.screaming
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=40}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=6}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_screaming
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=20}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=26}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_screaming
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=40}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0