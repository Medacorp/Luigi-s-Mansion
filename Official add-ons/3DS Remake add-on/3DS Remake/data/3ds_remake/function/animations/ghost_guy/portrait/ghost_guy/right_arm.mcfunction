teleport @s[tag=!flipped_gravity] ^0.15 ^0.05 ^
teleport @s[tag=flipped_gravity] ^-0.15 ^-0.05 ^
scoreboard players set @s AnimationRotationX -900
scoreboard players set @s AnimationRotationY 900
data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]
execute unless score #mirrored Selected matches 1 run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment