scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..10}] ^ ^0.55 ^-0.55
teleport @s[scores={AnimationProgress=11}] ^ ^0.4 ^-0.55
teleport @s[scores={AnimationProgress=12}] ^ ^0.25 ^-0.55
teleport @s[scores={AnimationProgress=13}] ^ ^0.1 ^-0.55
teleport @s[scores={AnimationProgress=14}] ^ ^-0.05 ^-0.55
teleport @s[scores={AnimationProgress=15}] ^ ^-0.2 ^-0.55
teleport @s[scores={AnimationProgress=16}] ^ ^-0.35 ^-0.55
teleport @s[scores={AnimationProgress=17}] ^ ^-0.5 ^-0.55
teleport @s[scores={AnimationProgress=18}] ^ ^-0.65 ^-0.55
teleport @s[scores={AnimationProgress=19}] ^ ^-0.8 ^-0.55
teleport @s[scores={AnimationProgress=20}] ^ ^-0.95 ^-0.55
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0