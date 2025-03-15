scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=13..28}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=33..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players operation #temp Time = @s AnimationProgress
scoreboard players operation #temp Time %= #4 Constants
execute if score #temp Time matches 1.. run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 0b
execute if score #temp Time matches 0 run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 1b
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0