scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-1.333 ^0.667
teleport @s[scores={AnimationProgress=2}] ^ ^-1.2 ^0.6
teleport @s[scores={AnimationProgress=3}] ^ ^-1.067 ^0.533
teleport @s[scores={AnimationProgress=4}] ^ ^-0.933 ^0.467
teleport @s[scores={AnimationProgress=5}] ^ ^-0.8 ^0.4
teleport @s[scores={AnimationProgress=6}] ^ ^-0.667 ^0.333
teleport @s[scores={AnimationProgress=7}] ^ ^-0.533 ^0.267
teleport @s[scores={AnimationProgress=8}] ^ ^-0.4 ^0.2
teleport @s[scores={AnimationProgress=9}] ^ ^-0.267 ^0.133
teleport @s[scores={AnimationProgress=10}] ^ ^-0.133 ^0.067
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
scoreboard players add @s[scores={AnimationProgress=11..15}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=16..25}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0