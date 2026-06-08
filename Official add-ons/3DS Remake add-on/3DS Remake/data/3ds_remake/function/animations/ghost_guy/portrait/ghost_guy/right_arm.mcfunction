teleport @s ^0.15 ^0.05 ^
scoreboard players set @s AnimationRotationX -900
scoreboard players set @s AnimationRotationY 900
attribute @s minecraft:scale base set 0.5
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment