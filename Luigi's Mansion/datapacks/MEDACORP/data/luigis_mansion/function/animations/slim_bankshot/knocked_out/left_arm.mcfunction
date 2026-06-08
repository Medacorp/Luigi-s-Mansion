scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0