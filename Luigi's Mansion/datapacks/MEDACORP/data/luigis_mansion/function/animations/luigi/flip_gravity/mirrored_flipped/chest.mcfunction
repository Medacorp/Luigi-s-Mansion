scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^0.1 ^0.8 ^
teleport @s[scores={AnimationProgress=2}] ^0.3 ^0.6 ^
teleport @s[scores={AnimationProgress=3}] ^0.3 ^0.5 ^
teleport @s[scores={AnimationProgress=4}] ^0.3 ^0.3 ^
teleport @s[scores={AnimationProgress=5}] ^0.2 ^0.1 ^
teleport @s[scores={AnimationProgress=6}] ^0.1 ^ ^
#teleport @s[scores={AnimationProgress=7}] ^ ^ ^
teleport @s[scores={AnimationProgress=8}] ^-0.2 ^0.1 ^
teleport @s[scores={AnimationProgress=9}] ^-0.3 ^0.2 ^
teleport @s[scores={AnimationProgress=10}] ^-0.3 ^0.4 ^
teleport @s[scores={AnimationProgress=11}] ^-0.3 ^0.6 ^
teleport @s[scores={AnimationProgress=12}] ^-0.2 ^0.7 ^
teleport @s[scores={AnimationProgress=13}] ^ ^0.9 ^
teleport @s[scores={AnimationProgress=14}] ^0.1 ^0.8 ^
teleport @s[scores={AnimationProgress=15}] ^0.3 ^0.7 ^
teleport @s[scores={AnimationProgress=16}] ^0.3 ^0.5 ^
teleport @s[scores={AnimationProgress=17}] ^0.3 ^0.4 ^
teleport @s[scores={AnimationProgress=18}] ^0.3 ^0.2 ^
teleport @s[scores={AnimationProgress=19}] ^0.1 ^ ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 0
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationZ 270
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0