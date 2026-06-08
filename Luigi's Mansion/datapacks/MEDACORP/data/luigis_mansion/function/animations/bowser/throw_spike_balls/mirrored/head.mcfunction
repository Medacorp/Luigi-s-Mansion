scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.closed_eyes
execute if entity @s[scores={AnimationProgress=31}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0