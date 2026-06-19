scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 80
teleport @s[scores={AnimationProgress=5..},tag=!flipped_gravity] ^ ^-0.3 ^0.4
teleport @s[scores={AnimationProgress=5..},tag=flipped_gravity] ^ ^0.3 ^0.4
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX 400
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5