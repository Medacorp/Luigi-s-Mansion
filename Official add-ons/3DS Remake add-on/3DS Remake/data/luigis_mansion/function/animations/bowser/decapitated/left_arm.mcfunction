scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ^ ^-1.333 ^0.667
teleport @s[tag=flipped_gravity] ^ ^1.333 ^0.667
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -70
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0