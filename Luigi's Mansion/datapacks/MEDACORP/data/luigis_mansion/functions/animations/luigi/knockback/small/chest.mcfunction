scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},nbt=!{Small:1b}] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=2},nbt=!{Small:1b}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=3},nbt=!{Small:1b}] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=4},nbt=!{Small:1b}] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=5},nbt=!{Small:1b}] ^ ^ ^0.25 ~ ~
teleport @s[scores={AnimationProgress=6},nbt=!{Small:1b}] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=7},nbt=!{Small:1b}] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=8},nbt=!{Small:1b}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=9},nbt=!{Small:1b}] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=1},nbt={Small:1b}] ^ ^ ^0.025 ~ ~
teleport @s[scores={AnimationProgress=2},nbt={Small:1b}] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=3},nbt={Small:1b}] ^ ^ ^0.075 ~ ~
teleport @s[scores={AnimationProgress=4},nbt={Small:1b}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=5},nbt={Small:1b}] ^ ^ ^0.125 ~ ~
teleport @s[scores={AnimationProgress=6},nbt={Small:1b}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=7},nbt={Small:1b}] ^ ^ ^0.075 ~ ~
teleport @s[scores={AnimationProgress=8},nbt={Small:1b}] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=9},nbt={Small:1b}] ^ ^ ^0.025 ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=10}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=10},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0