scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=81}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=81..92}] AnimationRotationY 30
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=115..136}] AnimationRotationY 30
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=149..160}] AnimationRotationY 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=81..92}] AnimationRotationY 30
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=115..136}] AnimationRotationY 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=149..160}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80