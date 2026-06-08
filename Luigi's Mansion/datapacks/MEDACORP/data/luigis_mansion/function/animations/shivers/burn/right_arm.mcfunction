teleport @s ~ ~-0.3 ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=11..15}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=16..20}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0