teleport @s[tag=!flipped_gravity] ^0.15 ^0.05 ^
teleport @s[tag=flipped_gravity] ^-0.15 ^-0.05 ^
data modify entity @s transformation.scale set value [0.625f,0.625f,0.625f]
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.bananas