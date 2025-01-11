scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-1 ^0.5
teleport @s[scores={AnimationProgress=2}] ^ ^-0.9 ^0.45
teleport @s[scores={AnimationProgress=3}] ^ ^-0.8 ^0.4
teleport @s[scores={AnimationProgress=4}] ^ ^-0.7 ^0.35
teleport @s[scores={AnimationProgress=5}] ^ ^-0.6 ^0.3
teleport @s[scores={AnimationProgress=6}] ^ ^-0.5 ^0.25
teleport @s[scores={AnimationProgress=7}] ^ ^-0.4 ^0.2
teleport @s[scores={AnimationProgress=8}] ^ ^-0.3 ^0.15
teleport @s[scores={AnimationProgress=9}] ^ ^-0.2 ^0.1
teleport @s[scores={AnimationProgress=10}] ^ ^-0.1 ^0.05
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=16..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0