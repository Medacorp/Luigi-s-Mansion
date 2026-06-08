scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.hidden
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0