scoreboard players set @s AnimationProgress 0
scoreboard players set @s Pull 0
scoreboard players set @s ActionTime 0
scoreboard players set @s Time 0
tag @s remove was_low_health
data merge entity @s[tag=!flipped_gravity] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.01f]}}
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default