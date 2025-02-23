scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-4 ^2.667
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0