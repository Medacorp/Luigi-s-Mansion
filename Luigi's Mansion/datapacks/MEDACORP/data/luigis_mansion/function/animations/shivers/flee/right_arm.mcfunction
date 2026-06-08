scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players remove @s AnimationRotationX 20
execute unless score #mirrored Selected matches 1 run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0