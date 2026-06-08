scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=8..13}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=18..20}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=3}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=3}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.screaming
execute unless data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=13}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=3}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_screaming
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s[scores={AnimationProgress=13}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big