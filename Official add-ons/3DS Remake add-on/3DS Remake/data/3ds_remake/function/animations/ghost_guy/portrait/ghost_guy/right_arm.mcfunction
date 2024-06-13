teleport @s ^0.15 ^0.05 ^
data merge entity @s {Pose:{Head:[-90.0f,90.0f,0.0f]}}
attribute @s minecraft:generic.scale base set 0.5
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment