scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=3..6}] AnimationRotationY 10
scoreboard players remove @s[scores={AnimationProgress=7..8}] AnimationRotationY 10
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.awake
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0