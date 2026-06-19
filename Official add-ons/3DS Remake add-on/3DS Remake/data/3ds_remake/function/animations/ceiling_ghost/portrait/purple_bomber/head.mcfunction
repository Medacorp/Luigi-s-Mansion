teleport @s[tag=!flipped_gravity] ^ ^0.05 ^
teleport @s[tag=flipped_gravity] ^ ^-0.05 ^
scoreboard players set @s AnimationRotationZ -1800
scoreboard players remove @s[tag=flipped_gravity] AnimationRotationZ 1800
data modify entity @s trandformation.scale set value [0.5f,0.5f,0.5f]