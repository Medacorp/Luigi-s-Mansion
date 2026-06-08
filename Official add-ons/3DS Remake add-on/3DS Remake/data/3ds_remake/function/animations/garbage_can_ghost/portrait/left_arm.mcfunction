teleport @s ^-0.15 ^0.05 ^
scoreboard players set @s AnimationRotationX -1200
scoreboard players set @s AnimationRotationY -200
scoreboard players set @s AnimationRotationZ 200
attribute @s minecraft:scale base set 0.5
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.banana