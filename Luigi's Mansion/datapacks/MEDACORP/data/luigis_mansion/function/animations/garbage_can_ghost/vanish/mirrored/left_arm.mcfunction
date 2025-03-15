scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~0.4 ~
teleport @s[scores={AnimationProgress=2}] ~ ~0.8 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.4 ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.3 ^ ^ rotated ~8 ~ run teleport @s ^0.3 ^0.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.3 ^ ^ rotated ~16 ~ run teleport @s ^0.3 ^0.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.3 ^ ^ rotated ~24 ~ run teleport @s ^0.3 ^0.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.3 ^ ^ rotated ~32 ~ run teleport @s ^0.3 ^0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.3 ^ ^ rotated ~40 ~ run teleport @s ^0.3 ^0.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^-0.3 ^ ^ rotated ~48 ~ run teleport @s ^0.3 ^0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^-0.3 ^ ^ rotated ~56 ~ run teleport @s ^0.3 ^0.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^-0.3 ^ ^ rotated ~64 ~ run teleport @s ^0.3 ^0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^-0.3 ^ ^ rotated ~72 ~ run teleport @s ^0.3 ^0.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^-0.3 ^ ^ rotated ~80 ~ run teleport @s ^0.3 ^1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^-0.3 ^ ^ rotated ~88 ~ run teleport @s ^0.3 ^1.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^-0.3 ^ ^ rotated ~96 ~ run teleport @s ^0.3 ^1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^-0.3 ^ ^ rotated ~104 ~ run teleport @s ^0.3 ^1.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^-0.3 ^ ^ rotated ~112 ~ run teleport @s ^0.3 ^1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^-0.3 ^ ^ rotated ~120 ~ run teleport @s ^0.3 ^1.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=20}] positioned ^-0.3 ^ ^ rotated ~128 ~ run teleport @s ^0.3 ^1.6 ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-40.0f,-20.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProgress=6..12}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 16
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.bananas
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0