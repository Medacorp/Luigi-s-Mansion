scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[45.0f,0.0f,0.01f]}}
data modify entity @s[tag=visible] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment
data modify entity @s[tag=!visible] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.invisible
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0