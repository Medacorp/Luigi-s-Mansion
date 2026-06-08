scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationZ 20
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0