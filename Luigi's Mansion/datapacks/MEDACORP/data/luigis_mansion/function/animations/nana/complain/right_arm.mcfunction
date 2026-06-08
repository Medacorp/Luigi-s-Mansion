scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationY 50
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0