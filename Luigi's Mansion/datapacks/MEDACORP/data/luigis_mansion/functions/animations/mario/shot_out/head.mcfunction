scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11}] ^ ^-0.15 ^
teleport @s[scores={AnimationProgress=12}] ^ ^-0.3 ^
teleport @s[scores={AnimationProgress=13}] ^ ^-0.45 ^
teleport @s[scores={AnimationProgress=14}] ^ ^-0.6 ^
teleport @s[scores={AnimationProgress=15}] ^ ^-0.75 ^
teleport @s[scores={AnimationProgress=16}] ^ ^-0.9 ^
teleport @s[scores={AnimationProgress=17}] ^ ^-1.05 ^
teleport @s[scores={AnimationProgress=18}] ^ ^-1.2 ^
teleport @s[scores={AnimationProgress=19}] ^ ^-1.35 ^
teleport @s[scores={AnimationProgress=20}] ^ ^-1.5 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0