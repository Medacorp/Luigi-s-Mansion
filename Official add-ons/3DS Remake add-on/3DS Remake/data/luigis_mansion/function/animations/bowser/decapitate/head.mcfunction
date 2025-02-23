scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-1.333 ^0.667
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.decapitated
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0