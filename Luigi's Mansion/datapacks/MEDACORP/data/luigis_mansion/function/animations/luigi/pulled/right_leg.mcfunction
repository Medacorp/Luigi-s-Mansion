scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 100
teleport @s[scores={AnimationProgress=5..},tag=!flipped_gravity] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=5..},tag=flipped_gravity] ^ ^0.2 ^
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5