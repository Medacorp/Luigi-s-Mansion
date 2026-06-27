scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=4}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=5..12}] ^0.1 ^ ^
teleport @s[scores={AnimationProgress=13}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=16}] ^-0.05 ^ ^
teleport @s[scores={AnimationProgress=17..24}] ^-0.1 ^ ^
teleport @s[scores={AnimationProgress=25}] ^-0.05 ^ ^
scoreboard players add @s[scores={AnimationProgress=8..9}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=10..11}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=20..21}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=23..24}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0