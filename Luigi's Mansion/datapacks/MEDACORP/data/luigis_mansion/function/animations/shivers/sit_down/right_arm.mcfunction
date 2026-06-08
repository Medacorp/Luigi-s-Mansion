scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=6..10}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=11..15}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=16..20}] ~ ~-0.3 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 60
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationZ 90
execute unless score #mirrored Selected matches 1 run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0