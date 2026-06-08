scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=35}] ^ ^ ^0.133
teleport @s[scores={AnimationProgress=36}] ^ ^ ^0.267
teleport @s[scores={AnimationProgress=37..}] ^ ^ ^0.4
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 500
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=35}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth