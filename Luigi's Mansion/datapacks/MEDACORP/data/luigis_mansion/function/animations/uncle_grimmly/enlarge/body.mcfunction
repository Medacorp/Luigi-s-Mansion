teleport @s[tag=!flipped_gravity] ^ ^1 ^
teleport @s[tag=flipped_gravity] ^ ^-1 ^
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
data modify entity @s[scores={AnimationProgress=1}] transformation.scale set value [2,2,2]
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0