scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-50.0f,0.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!visible] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.invisible
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=visible] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0