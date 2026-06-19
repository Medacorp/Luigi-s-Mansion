scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ^ ^0.133 ^1
teleport @s[tag=flipped_gravity] ^ ^-0.133 ^1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0