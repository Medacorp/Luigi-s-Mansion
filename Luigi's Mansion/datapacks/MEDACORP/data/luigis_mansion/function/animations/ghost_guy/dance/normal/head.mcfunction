scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=4..7}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players add @s AnimationRotationZ 20
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0