scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.12 ^
teleport @s[scores={AnimationProgress=2},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.24 ^
teleport @s[scores={AnimationProgress=3},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.36 ^
teleport @s[scores={AnimationProgress=4},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.48 ^
teleport @s[scores={AnimationProgress=5},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.6 ^
teleport @s[scores={AnimationProgress=6},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=7..8},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=9},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=10..},tag=!shrunk,tag=!flipped_gravity] ^ ^-0.6 ^
teleport @s[scores={AnimationProgress=1},tag=!shrunk,tag=flipped_gravity] ^ ^0.12 ^
teleport @s[scores={AnimationProgress=2},tag=!shrunk,tag=flipped_gravity] ^ ^0.24 ^
teleport @s[scores={AnimationProgress=3},tag=!shrunk,tag=flipped_gravity] ^ ^0.36 ^
teleport @s[scores={AnimationProgress=4},tag=!shrunk,tag=flipped_gravity] ^ ^0.48 ^
teleport @s[scores={AnimationProgress=5},tag=!shrunk,tag=flipped_gravity] ^ ^0.6 ^
teleport @s[scores={AnimationProgress=6},tag=!shrunk,tag=flipped_gravity] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=7..8},tag=!shrunk,tag=flipped_gravity] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=9},tag=!shrunk,tag=flipped_gravity] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=10..},tag=!shrunk,tag=flipped_gravity] ^ ^0.6 ^
teleport @s[scores={AnimationProgress=1},tag=shrunk,tag=!flipped_gravity] ^ ^-0.06 ^
teleport @s[scores={AnimationProgress=2},tag=shrunk,tag=!flipped_gravity] ^ ^-0.12 ^
teleport @s[scores={AnimationProgress=3},tag=shrunk,tag=!flipped_gravity] ^ ^-0.18 ^
teleport @s[scores={AnimationProgress=4},tag=shrunk,tag=!flipped_gravity] ^ ^-0.24 ^
teleport @s[scores={AnimationProgress=5},tag=shrunk,tag=!flipped_gravity] ^ ^-0.3 ^
teleport @s[scores={AnimationProgress=6},tag=shrunk,tag=!flipped_gravity] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=7..8},tag=shrunk,tag=!flipped_gravity] ^ ^-0.1 ^
teleport @s[scores={AnimationProgress=9},tag=shrunk,tag=!flipped_gravity] ^ ^-0.2 ^
teleport @s[scores={AnimationProgress=10..},tag=shrunk,tag=!flipped_gravity] ^ ^-0.3 ^
teleport @s[scores={AnimationProgress=1},tag=shrunk,tag=flipped_gravity] ^ ^0.06 ^
teleport @s[scores={AnimationProgress=2},tag=shrunk,tag=flipped_gravity] ^ ^0.12 ^
teleport @s[scores={AnimationProgress=3},tag=shrunk,tag=flipped_gravity] ^ ^0.18 ^
teleport @s[scores={AnimationProgress=4},tag=shrunk,tag=flipped_gravity] ^ ^0.24 ^
teleport @s[scores={AnimationProgress=5},tag=shrunk,tag=flipped_gravity] ^ ^0.3 ^
teleport @s[scores={AnimationProgress=6},tag=shrunk,tag=flipped_gravity] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=7..8},tag=shrunk,tag=flipped_gravity] ^ ^0.1 ^
teleport @s[scores={AnimationProgress=9},tag=shrunk,tag=flipped_gravity] ^ ^0.2 ^
teleport @s[scores={AnimationProgress=10..},tag=shrunk,tag=flipped_gravity] ^ ^0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0