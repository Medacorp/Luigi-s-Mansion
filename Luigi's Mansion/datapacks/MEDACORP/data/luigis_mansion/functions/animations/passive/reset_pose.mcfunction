scoreboard players set @s AnimationProgress 0
data merge entity @s[tag=!flipped_gravity] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.01f]}}
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default