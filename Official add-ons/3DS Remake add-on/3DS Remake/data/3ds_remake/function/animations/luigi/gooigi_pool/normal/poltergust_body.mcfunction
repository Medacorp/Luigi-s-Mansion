scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 40
teleport @s[tag=!flipped_gravity] ^ ^-2 ^
teleport @s[tag=flipped_gravity] ^ ^2 ^
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0