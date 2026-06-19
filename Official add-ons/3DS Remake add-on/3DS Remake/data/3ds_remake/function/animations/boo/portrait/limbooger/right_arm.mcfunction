scoreboard players set @s AnimationRotationZ 900
scoreboard players remove @s[tag=flipped_gravity] AnimationRotationZ 1800
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.attacking