scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=41}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.hatless
data modify entity @s[scores={AnimationProgress=55}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=1..55}] AnimationRotationX 200
execute at @s[scores={AnimationProgress=1..45},tag=!shrunk] run particle minecraft:smoke ~ ~1.8 ~ 0.2 0.2 0.2 0 3 normal @a[tag=same_room]
execute at @s[scores={AnimationProgress=1..45},tag=shrunk] run particle minecraft:smoke ~ ~0.9 ~ 0.2 0.2 0.2 0 3 normal @a[tag=same_room]
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0