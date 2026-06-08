scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..8}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=13..28}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=33..40}] AnimationRotationX 10
scoreboard players operation #timer Time = @s AnimationProgress
scoreboard players operation #timer Time %= #4 Constants
execute if score #timer Time matches 1.. run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 0b
execute if score #timer Time matches 0 run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 1b
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0