teleport @s ^-0.15 ^0.05 ^
data merge entity @s {Pose:{Head:[-180.0f,0.0f,0.0f]}}
attribute @s minecraft:scale base set 0.5
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.food