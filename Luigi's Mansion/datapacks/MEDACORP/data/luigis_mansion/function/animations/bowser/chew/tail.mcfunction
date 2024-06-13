scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ^ ^0.95 ^0.7125
teleport @s[scores={AnimationProgress=12}] ^ ^0.9 ^0.675
teleport @s[scores={AnimationProgress=13}] ^ ^0.85 ^0.6375
teleport @s[scores={AnimationProgress=14}] ^ ^0.8 ^0.6
teleport @s[scores={AnimationProgress=15}] ^ ^0.75 ^0.5625
teleport @s[scores={AnimationProgress=16}] ^ ^0.7 ^0.525
teleport @s[scores={AnimationProgress=17}] ^ ^0.65 ^0.4875
teleport @s[scores={AnimationProgress=18}] ^ ^0.6 ^0.45
teleport @s[scores={AnimationProgress=19}] ^ ^0.55 ^0.4125
teleport @s[scores={AnimationProgress=20}] ^ ^0.5 ^0.375
teleport @s[scores={AnimationProgress=21}] ^ ^0.45 ^0.3375
teleport @s[scores={AnimationProgress=22}] ^ ^0.4 ^0.3
teleport @s[scores={AnimationProgress=23}] ^ ^0.35 ^0.2625
teleport @s[scores={AnimationProgress=24}] ^ ^0.3 ^0.225
teleport @s[scores={AnimationProgress=25}] ^ ^0.25 ^0.1875
teleport @s[scores={AnimationProgress=26}] ^ ^0.2 ^0.15
teleport @s[scores={AnimationProgress=27}] ^ ^0.15 ^0.1125
teleport @s[scores={AnimationProgress=28}] ^ ^0.1 ^0.075
teleport @s[scores={AnimationProgress=29}] ^ ^0.05 ^0.0375
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0