scoreboard players set @s AnimationProgress 0
scoreboard players set @s AnimationRotationX 0
scoreboard players set @s AnimationRotationY 0
scoreboard players set @s AnimationRotationZ 0
scoreboard players set @s[tag=flipped_gravity] AnimationRotationZ -1800
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default