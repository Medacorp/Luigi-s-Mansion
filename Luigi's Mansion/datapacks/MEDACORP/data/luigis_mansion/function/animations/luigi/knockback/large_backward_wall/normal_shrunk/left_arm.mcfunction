scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.06 ^
teleport @s[scores={AnimationProgress=2}] ^ ^-0.12 ^
teleport @s[scores={AnimationProgress=3}] ^ ^-0.18 ^
teleport @s[scores={AnimationProgress=4}] ^ ^-0.24 ^
teleport @s[scores={AnimationProgress=5}] ^ ^-0.3 ^
teleport @s[scores={AnimationProgress=6}] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=7..8}] ^ ^-0.1 ^
teleport @s[scores={AnimationProgress=9}] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=10..}] ^ ^-0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0