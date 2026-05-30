scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..13}] ^ ^ ^0.067
teleport @s[scores={AnimationProgress=14..16}] ^ ^ ^0.133
teleport @s[scores={AnimationProgress=17..}] ^ ^ ^0.2
execute at @s run teleport @s[scores={AnimationProgress=..10}] ^ ^0.1 ^-0.1
execute at @s run teleport @s[scores={AnimationProgress=11..35}] ^ ^0.05 ^-0.05
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[50.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=35}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth
scoreboard players reset #temp Time