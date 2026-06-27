scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^4.5 ^0.56
teleport @s[scores={AnimationProgress=2}] ^ ^4.2 ^0.56
teleport @s[scores={AnimationProgress=3}] ^ ^3.9 ^0.56
teleport @s[scores={AnimationProgress=4}] ^ ^3.6 ^0.56
teleport @s[scores={AnimationProgress=5}] ^ ^3.3 ^0.56
teleport @s[scores={AnimationProgress=6}] ^ ^3 ^0.56
teleport @s[scores={AnimationProgress=7}] ^ ^2.7 ^0.56
teleport @s[scores={AnimationProgress=8}] ^ ^2.4 ^0.56
teleport @s[scores={AnimationProgress=9}] ^ ^2.1 ^0.56
teleport @s[scores={AnimationProgress=10}] ^ ^1.8 ^0.56
teleport @s[scores={AnimationProgress=11}] ^ ^1.5 ^0.56
teleport @s[scores={AnimationProgress=12}] ^ ^1.2 ^0.56
teleport @s[scores={AnimationProgress=13}] ^ ^0.9 ^0.42
teleport @s[scores={AnimationProgress=14}] ^ ^0.6 ^0.28
teleport @s[scores={AnimationProgress=15}] ^ ^0.3 ^0.14
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 110
scoreboard players remove @s[scores={AnimationProgress=8..17}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0