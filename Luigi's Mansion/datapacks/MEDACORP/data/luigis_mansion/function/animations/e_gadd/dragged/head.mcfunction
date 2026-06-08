scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.14 ^0.3
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX -200
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players remove @s AnimationRotationX 20
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5