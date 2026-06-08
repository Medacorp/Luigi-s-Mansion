scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=81..100}] run scoreboard players remove @s AnimationRotationY 10
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=100..}] AnimationProgress 0