scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=4}] ^-0.05 ^ ^
teleport @s[scores={AnimationProgress=5..12}] ^-0.1 ^ ^
teleport @s[scores={AnimationProgress=13}] ^-0.05 ^ ^
teleport @s[scores={AnimationProgress=16}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=17..24}] ^0.1 ^ ^
teleport @s[scores={AnimationProgress=25}] ^0.05 ^ ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players remove @s[scores={AnimationProgress=8..10}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=11..13}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=20..22}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=23..25}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0