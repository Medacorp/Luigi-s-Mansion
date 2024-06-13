scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=6..10}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=11..15}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=16..20}] ~ ~-0.3 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
data modify entity @s[scores={AnimationProgress=11}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.screaming