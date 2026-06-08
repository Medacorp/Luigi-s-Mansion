teleport @s ^ ^1 ^
scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationX 10
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0