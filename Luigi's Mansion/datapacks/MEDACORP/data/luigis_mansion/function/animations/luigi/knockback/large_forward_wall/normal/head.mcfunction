scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.12 ^
teleport @s[scores={AnimationProgress=2}] ^ ^-0.24 ^
teleport @s[scores={AnimationProgress=3}] ^ ^-0.36 ^
teleport @s[scores={AnimationProgress=4}] ^ ^-0.48 ^
teleport @s[scores={AnimationProgress=5}] ^ ^-0.6 ^
teleport @s[scores={AnimationProgress=6}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=7..8}] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=9}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=10..}] ^ ^-0.6 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0