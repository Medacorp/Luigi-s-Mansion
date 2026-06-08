scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationY 40
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.closed_eyes
execute if entity @s[scores={AnimationProgress=31}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0