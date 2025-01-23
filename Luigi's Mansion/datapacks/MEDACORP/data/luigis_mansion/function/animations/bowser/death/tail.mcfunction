scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=91}] ^ ^-0.02 ^0.4
teleport @s[scores={AnimationProgress=92}] ^ ^-0.04 ^0.8
teleport @s[scores={AnimationProgress=93}] ^ ^-0.06 ^1.2
teleport @s[scores={AnimationProgress=94}] ^ ^-0.08 ^1.6
teleport @s[scores={AnimationProgress=95}] ^ ^-0.1 ^2
teleport @s[scores={AnimationProgress=96}] ^ ^-0.12 ^2.4
teleport @s[scores={AnimationProgress=97}] ^ ^-0.14 ^2.8
teleport @s[scores={AnimationProgress=98}] ^ ^-0.16 ^3.2
teleport @s[scores={AnimationProgress=99}] ^ ^-0.18 ^3.6
teleport @s[scores={AnimationProgress=100..}] ^ ^-0.2 ^4
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[-20.0f,0.0f,0.01f]}}