teleport @s[tag=!flipped_gravity] ^0.15 ^-0.1 ^
teleport @s[tag=flipped_gravity] ^-0.15 ^0.1 ^
scoreboard players set @s AnimationRotationX -900
scoreboard players set @s AnimationRotationY 200
data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]