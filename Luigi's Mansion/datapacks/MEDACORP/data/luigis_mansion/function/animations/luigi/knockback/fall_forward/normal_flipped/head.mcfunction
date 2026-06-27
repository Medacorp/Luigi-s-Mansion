scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},tag=!shrunk] ^ ^0.07 ^0.1
teleport @s[scores={AnimationProgress=2},tag=!shrunk] ^ ^0.14 ^0.2
teleport @s[scores={AnimationProgress=3},tag=!shrunk] ^ ^0.21 ^0.3
teleport @s[scores={AnimationProgress=4},tag=!shrunk] ^ ^0.29 ^0.4
teleport @s[scores={AnimationProgress=5},tag=!shrunk] ^ ^0.35 ^0.3
teleport @s[scores={AnimationProgress=6},tag=!shrunk] ^ ^0.42 ^0.2
teleport @s[scores={AnimationProgress=7},tag=!shrunk] ^ ^0.5 ^0.1
teleport @s[scores={AnimationProgress=8},tag=!shrunk] ^ ^0.5 ^-0.1
teleport @s[scores={AnimationProgress=9},tag=!shrunk] ^ ^0.42 ^-0.2
teleport @s[scores={AnimationProgress=10},tag=!shrunk] ^ ^0.35 ^-0.3
teleport @s[scores={AnimationProgress=11},tag=!shrunk] ^ ^0.29 ^-0.4
teleport @s[scores={AnimationProgress=12},tag=!shrunk] ^ ^0.21 ^-0.3
teleport @s[scores={AnimationProgress=13},tag=!shrunk] ^ ^0.34 ^-0.2
teleport @s[scores={AnimationProgress=14},tag=!shrunk] ^ ^0.47 ^-0.1
teleport @s[scores={AnimationProgress=15},tag=!shrunk] ^ ^0.6 ^
teleport @s[scores={AnimationProgress=16},tag=!shrunk] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=17},tag=!shrunk] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=18},tag=!shrunk] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=19},tag=!shrunk] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=20..},tag=!shrunk] ^ ^0.6 ^
teleport @s[scores={AnimationProgress=1},tag=shrunk] ^ ^0.035 ^0.05
teleport @s[scores={AnimationProgress=2},tag=shrunk] ^ ^0.07 ^0.1
teleport @s[scores={AnimationProgress=3},tag=shrunk] ^ ^0.105 ^0.15
teleport @s[scores={AnimationProgress=4},tag=shrunk] ^ ^0.145 ^0.2
teleport @s[scores={AnimationProgress=5},tag=shrunk] ^ ^0.175 ^0.15
teleport @s[scores={AnimationProgress=6},tag=shrunk] ^ ^0.21 ^0.1
teleport @s[scores={AnimationProgress=7},tag=shrunk] ^ ^0.25 ^0.05
teleport @s[scores={AnimationProgress=8},tag=shrunk] ^ ^0.25 ^-0.05
teleport @s[scores={AnimationProgress=9},tag=shrunk] ^ ^0.21 ^-0.1
teleport @s[scores={AnimationProgress=10},tag=shrunk] ^ ^0.175 ^-0.15
teleport @s[scores={AnimationProgress=11},tag=shrunk] ^ ^0.145 ^-0.2
teleport @s[scores={AnimationProgress=12},tag=shrunk] ^ ^0.105 ^-0.15
teleport @s[scores={AnimationProgress=13},tag=shrunk] ^ ^0.17 ^-0.1
teleport @s[scores={AnimationProgress=14},tag=shrunk] ^ ^0.235 ^-0.05
teleport @s[scores={AnimationProgress=15},tag=shrunk] ^ ^0.3 ^
teleport @s[scores={AnimationProgress=16},tag=shrunk] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=17},tag=shrunk] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=18},tag=shrunk] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=19},tag=shrunk] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=20..},tag=shrunk] ^ ^0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players remove @s[scores={AnimationProgress=16..25}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=..15}] AnimationRotationX 240
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0