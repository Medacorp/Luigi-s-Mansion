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
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-40.0f,20.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-40.0f,20.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
scoreboard players reset #temp Time