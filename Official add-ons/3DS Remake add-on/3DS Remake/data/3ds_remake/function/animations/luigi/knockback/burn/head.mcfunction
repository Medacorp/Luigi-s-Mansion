scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=41}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.hatless
data modify entity @s[scores={AnimationProgress=55}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..55}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
scoreboard players reset #temp Time
execute at @s[scores={AnimationProgress=1..45},tag=!shrunk] run particle minecraft:smoke ~ ~1.8 ~ 0.2 0.2 0.2 0 3 normal @a[tag=same_room]
execute at @s[scores={AnimationProgress=1..45},tag=shrunk] run particle minecraft:smoke ~ ~0.9 ~ 0.2 0.2 0.2 0 3 normal @a[tag=same_room]
data merge entity @s[scores={AnimationProgress=60}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=60},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0