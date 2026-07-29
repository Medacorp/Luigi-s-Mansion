scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5}] ^ ^0.05 ^
teleport @s[scores={AnimationProgress=6}] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=7}] ^ ^0.15 ^-0.05
teleport @s[scores={AnimationProgress=8}] ^ ^0.2 ^-0.05
teleport @s[scores={AnimationProgress=9}] ^ ^0.25 ^-0.1
teleport @s[scores={AnimationProgress=10..20}] ^ ^0.3 ^-0.1
teleport @s[scores={AnimationProgress=21}] ^ ^0.25 ^-0.1
teleport @s[scores={AnimationProgress=22}] ^ ^0.2 ^-0.05
teleport @s[scores={AnimationProgress=23}] ^ ^0.15 ^-0.05
teleport @s[scores={AnimationProgress=24}] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=25}] ^ ^0.05 ^
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0