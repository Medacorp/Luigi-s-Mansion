teleport @s[tag=!flipped_gravity] ^ ^1 ^
teleport @s[tag=flipped_gravity] ^ ^-1 ^
scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=5..12}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 10
data modify entity @s[scores={AnimationProgress=1}] transformation.scale set value [2,2,2]
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0