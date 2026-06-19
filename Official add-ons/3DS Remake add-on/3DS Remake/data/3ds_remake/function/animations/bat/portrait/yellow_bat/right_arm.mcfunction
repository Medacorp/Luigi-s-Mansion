teleport @s[tag=!flipped_gravity] ^0.0325 ^ ^
teleport @s[tag=flipped_gravity] ^-0.0325 ^ ^
scoreboard players set @s AnimationRotationX 300
scoreboard players set @s AnimationRotationY -100
data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]