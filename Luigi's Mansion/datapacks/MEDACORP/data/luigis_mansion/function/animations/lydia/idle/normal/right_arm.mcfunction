scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationZ 20
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0