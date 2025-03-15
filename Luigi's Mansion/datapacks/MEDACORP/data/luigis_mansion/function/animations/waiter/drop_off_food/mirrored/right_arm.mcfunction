scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-180.0f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=3..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=6..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 25
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.food
data modify entity @s[scores={AnimationProgress=5}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0