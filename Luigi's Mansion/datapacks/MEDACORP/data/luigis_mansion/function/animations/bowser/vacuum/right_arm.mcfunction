scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ^ ^-4 ^2.667
execute at @s[tag=!flipped_gravity] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.933 ^-0.8
teleport @s[tag=flipped_gravity] ^ ^4 ^2.667
execute at @s[tag=flipped_gravity] positioned ^ ^-0.667 ^0.667 run teleport @s ^ ^-0.933 ^-0.8
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 70
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=2}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0