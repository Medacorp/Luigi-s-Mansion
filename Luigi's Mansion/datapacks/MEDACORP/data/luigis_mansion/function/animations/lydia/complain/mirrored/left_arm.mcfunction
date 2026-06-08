scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=21..25}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=26..30}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=31..35}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=41..45}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=51..55}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=56..60}] run scoreboard players add @s AnimationRotationY 10
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
data modify entity @s[scores={AnimationProgress=20}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0