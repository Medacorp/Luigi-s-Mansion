scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].components."minecraft:custom_data".invisible
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0