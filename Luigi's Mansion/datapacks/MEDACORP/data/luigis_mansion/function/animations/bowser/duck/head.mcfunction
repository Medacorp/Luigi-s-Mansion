scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.15 ^0.1
teleport @s[scores={AnimationProgress=2}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=3}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=4}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=5}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=6}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=7}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=8}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=9}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=10}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=11}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=12}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=13}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=14}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=15}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=16}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=17}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=18}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=19}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=20}] ^ ^-3 ^2
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0