scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^0.067 ^0.05
teleport @s[scores={AnimationProgress=2}] ^ ^0.133 ^0.1
teleport @s[scores={AnimationProgress=3}] ^ ^0.2 ^0.15
teleport @s[scores={AnimationProgress=4}] ^ ^0.267 ^0.2
teleport @s[scores={AnimationProgress=5}] ^ ^0.333 ^0.25
teleport @s[scores={AnimationProgress=6}] ^ ^0.4 ^0.3
teleport @s[scores={AnimationProgress=7}] ^ ^0.467 ^0.35
teleport @s[scores={AnimationProgress=8}] ^ ^0.533 ^0.4
teleport @s[scores={AnimationProgress=9}] ^ ^0.6 ^0.45
teleport @s[scores={AnimationProgress=10}] ^ ^0.667 ^0.5
teleport @s[scores={AnimationProgress=11}] ^ ^0.733 ^0.55
teleport @s[scores={AnimationProgress=12}] ^ ^0.8 ^0.6
teleport @s[scores={AnimationProgress=13}] ^ ^0.867 ^0.65
teleport @s[scores={AnimationProgress=14}] ^ ^0.933 ^0.7
teleport @s[scores={AnimationProgress=15}] ^ ^1 ^0.75
teleport @s[scores={AnimationProgress=16}] ^ ^1.067 ^0.8
teleport @s[scores={AnimationProgress=17}] ^ ^1.133 ^0.85
teleport @s[scores={AnimationProgress=18}] ^ ^1.2 ^0.9
teleport @s[scores={AnimationProgress=19}] ^ ^1.267 ^0.95
teleport @s[scores={AnimationProgress=20}] ^ ^0.133 ^1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0