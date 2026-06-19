teleport @s[tag=!flipped_gravity] ^0.15 ^0.05 ^
teleport @s[tag=flipped_gravity] ^-0.15 ^-0.05 ^
scoreboard players set @s AnimationRotationX -600
data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]