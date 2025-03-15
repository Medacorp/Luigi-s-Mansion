scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=51..59}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
data modify entity @s[tag=visible] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
data modify entity @s[tag=!visible] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.invisible
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0