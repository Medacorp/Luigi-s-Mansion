scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=81}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=81..92}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=115..136}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=149..160}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=81..92}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=115..136}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=149..160}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80