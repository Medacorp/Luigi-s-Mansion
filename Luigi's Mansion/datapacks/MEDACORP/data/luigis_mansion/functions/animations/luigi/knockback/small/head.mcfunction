scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},tag=!shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=2},tag=!shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=3},tag=!shrunk] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=4},tag=!shrunk] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=5},tag=!shrunk] ^ ^ ^0.25 ~ ~
teleport @s[scores={AnimationProgress=6},tag=!shrunk] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=7},tag=!shrunk] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=8},tag=!shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=9},tag=!shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=1},tag=shrunk] ^ ^ ^0.025 ~ ~
teleport @s[scores={AnimationProgress=2},tag=shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=3},tag=shrunk] ^ ^ ^0.075 ~ ~
teleport @s[scores={AnimationProgress=4},tag=shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=5},tag=shrunk] ^ ^ ^0.125 ~ ~
teleport @s[scores={AnimationProgress=6},tag=shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=7},tag=shrunk] ^ ^ ^0.075 ~ ~
teleport @s[scores={AnimationProgress=8},tag=shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=9},tag=shrunk] ^ ^ ^0.025 ~ ~
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0
tag @s add scared_head
function luigis_mansion:animations/luigi/sync_head