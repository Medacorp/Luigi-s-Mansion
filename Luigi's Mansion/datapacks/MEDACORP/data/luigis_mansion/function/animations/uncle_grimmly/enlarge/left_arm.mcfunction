teleport @s ^0.46 ^0.8 ^ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=5..12}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 20
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0