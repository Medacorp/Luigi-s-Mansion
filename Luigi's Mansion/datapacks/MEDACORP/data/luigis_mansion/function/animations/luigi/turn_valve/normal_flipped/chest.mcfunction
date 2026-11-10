scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5}] ^ ^0.05 ^
teleport @s[scores={AnimationProgress=6}] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=7}] ^ ^0.15 ^
teleport @s[scores={AnimationProgress=8}] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=9}] ^ ^0.25 ^
teleport @s[scores={AnimationProgress=10..90}] ^ ^0.3 ^
teleport @s[scores={AnimationProgress=91}] ^ ^0.25 ^
teleport @s[scores={AnimationProgress=92}] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=93}] ^ ^0.15 ^
teleport @s[scores={AnimationProgress=94}] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=95}] ^ ^0.05 ^
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=91..100}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0