scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=51}] ^ ^-0.02 ^0.4
teleport @s[scores={AnimationProgress=52}] ^ ^-0.04 ^0.8
teleport @s[scores={AnimationProgress=53}] ^ ^-0.06 ^1.2
teleport @s[scores={AnimationProgress=54}] ^ ^-0.08 ^1.6
teleport @s[scores={AnimationProgress=55}] ^ ^-0.1 ^2
teleport @s[scores={AnimationProgress=56}] ^ ^-0.12 ^2.4
teleport @s[scores={AnimationProgress=57}] ^ ^-0.14 ^2.8
teleport @s[scores={AnimationProgress=58}] ^ ^-0.16 ^3.2
teleport @s[scores={AnimationProgress=59}] ^ ^-0.18 ^3.6
teleport @s[scores={AnimationProgress=60..}] ^ ^-0.2 ^4
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[-20.0f,0.0f,0.01f]}}