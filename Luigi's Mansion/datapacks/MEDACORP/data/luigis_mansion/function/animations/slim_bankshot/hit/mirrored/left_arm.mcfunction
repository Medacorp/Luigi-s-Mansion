scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 450
execute if entity @s[scores={AnimationProgress=1..9}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=10..18}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=11..18}] run scoreboard players remove @s AnimationRotationZ 20
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=18..}] AnimationProgress 0