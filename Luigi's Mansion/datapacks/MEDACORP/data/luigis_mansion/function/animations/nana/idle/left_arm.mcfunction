scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=21..60}] run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players add @s AnimationRotationY 5
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0