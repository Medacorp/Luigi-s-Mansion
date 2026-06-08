scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 100
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5..}] ^ ^-0.1 ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5..}] ^ ^0.1 ^
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5