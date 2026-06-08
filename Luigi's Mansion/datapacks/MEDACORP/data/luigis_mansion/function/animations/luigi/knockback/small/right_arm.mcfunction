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
execute if entity @s[scores={AnimationProgress=1..5}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=6..10}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1..5},tag=!flipped_gravity] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=1..5},tag=flipped_gravity] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=6..10},tag=!flipped_gravity] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=6..10},tag=flipped_gravity] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0