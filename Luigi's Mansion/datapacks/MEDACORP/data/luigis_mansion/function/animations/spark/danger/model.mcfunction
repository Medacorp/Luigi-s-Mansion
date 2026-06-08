scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..28}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=33..40}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players operation #timer Time = @s AnimationProgress
scoreboard players operation #timer Time %= #4 Constants
execute if score #timer Time matches 1.. run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 0b
execute if score #timer Time matches 0 run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 1b
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0