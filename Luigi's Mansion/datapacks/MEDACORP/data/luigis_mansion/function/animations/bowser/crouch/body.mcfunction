scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ^ ^-2.56 ^2.547
teleport @s[tag=flipped_gravity] ^ ^2.56 ^2.547
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 800
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0