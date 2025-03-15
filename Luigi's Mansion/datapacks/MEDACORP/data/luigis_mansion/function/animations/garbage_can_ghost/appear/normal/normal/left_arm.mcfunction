scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.3 ^ ^ rotated ~-80 ~ run teleport @s ^0.3 ^2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.3 ^ ^ rotated ~-72 ~ run teleport @s ^0.3 ^1.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.3 ^ ^ rotated ~-64 ~ run teleport @s ^0.3 ^1.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.3 ^ ^ rotated ~-56 ~ run teleport @s ^0.3 ^1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.3 ^ ^ rotated ~-48 ~ run teleport @s ^0.3 ^1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.3 ^ ^ rotated ~-40 ~ run teleport @s ^0.3 ^1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.3 ^ ^ rotated ~-32 ~ run teleport @s ^0.3 ^0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.3 ^ ^ rotated ~-24 ~ run teleport @s ^0.3 ^0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.3 ^ ^ rotated ~-16 ~ run teleport @s ^0.3 ^0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^-0.3 ^ ^ rotated ~-8 ~ run teleport @s ^0.3 ^0.2 ^ ~ ~
teleport @s[scores={AnimationProgress=12}] ^ ^0.4 ^
teleport @s[scores={AnimationProgress=13}] ^ ^0.8 ^
teleport @s[scores={AnimationProgress=14}] ^ ^0.4 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-40.0f,-20.0f,-176.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..11}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=12..13}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProgress=14..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 16
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.banana_peel
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
