scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..13}] ^ ^ ^0.067
teleport @s[scores={AnimationProgress=14..16}] ^ ^ ^0.133
teleport @s[scores={AnimationProgress=17..}] ^ ^ ^0.2
execute at @s run teleport @s[scores={AnimationProgress=..10}] ^ ^0.1 ^-0.1
execute at @s run teleport @s[scores={AnimationProgress=11..35}] ^ ^0.05 ^-0.05
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 500
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=35}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth