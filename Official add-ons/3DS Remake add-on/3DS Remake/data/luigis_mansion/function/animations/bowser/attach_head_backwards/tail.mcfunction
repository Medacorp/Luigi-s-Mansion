scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-1.333 ^
teleport @s[scores={AnimationProgress=2}] ^ ^-1.2 ^
teleport @s[scores={AnimationProgress=3}] ^ ^-1.067 ^
teleport @s[scores={AnimationProgress=4}] ^ ^-0.933 ^
teleport @s[scores={AnimationProgress=5}] ^ ^-0.8 ^
teleport @s[scores={AnimationProgress=6}] ^ ^-0.667 ^
teleport @s[scores={AnimationProgress=7}] ^ ^-0.533 ^
teleport @s[scores={AnimationProgress=8}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=9}] ^ ^-0.267 ^
teleport @s[scores={AnimationProgress=10}] ^ ^-0.133 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-30.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0