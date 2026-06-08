scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.3 ^0.4
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX 200
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=11..15}] AnimationRotationX 20
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5