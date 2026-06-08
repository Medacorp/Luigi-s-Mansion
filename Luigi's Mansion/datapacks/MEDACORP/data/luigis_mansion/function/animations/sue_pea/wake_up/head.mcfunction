scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..18}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=19..60}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=61..102}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=123..140}] run scoreboard players remove @s AnimationRotationX 50
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.awake
data modify entity @s[scores={AnimationProgress=122}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0