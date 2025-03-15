scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.3 ^ ^ rotated ~-162 ~ run teleport @s ^-0.3 ^2.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.3 ^ ^ rotated ~-144 ~ run teleport @s ^-0.3 ^2.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.3 ^ ^ rotated ~-126 ~ run teleport @s ^-0.3 ^2.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.3 ^ ^ rotated ~-108 ~ run teleport @s ^-0.3 ^2.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.3 ^ ^ rotated ~-90 ~ run teleport @s ^-0.3 ^2.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.3 ^ ^ rotated ~-72 ~ run teleport @s ^-0.3 ^2.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.3 ^ ^ rotated ~-54 ~ run teleport @s ^-0.3 ^2.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.3 ^ ^ rotated ~-36 ~ run teleport @s ^-0.3 ^2.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.3 ^ ^ rotated ~-18 ~ run teleport @s ^-0.3 ^2.1 ^ ~ ~
teleport @s[scores={AnimationProgress=11}] ^ ^2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.3 ^ ^ rotated ~-342 ~ run teleport @s ^-0.3 ^1.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.3 ^ ^ rotated ~-324 ~ run teleport @s ^-0.3 ^1.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.3 ^ ^ rotated ~-306 ~ run teleport @s ^-0.3 ^1.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.3 ^ ^ rotated ~-288 ~ run teleport @s ^-0.3 ^1.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.3 ^ ^ rotated ~-270 ~ run teleport @s ^-0.3 ^1.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.3 ^ ^ rotated ~-252 ~ run teleport @s ^-0.3 ^1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.3 ^ ^ rotated ~-234 ~ run teleport @s ^-0.3 ^1.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.3 ^ ^ rotated ~-216 ~ run teleport @s ^-0.3 ^1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=20}] positioned ^0.3 ^ ^ rotated ~-198 ~ run teleport @s ^-0.3 ^1.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=21}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=22}] positioned ^0.3 ^ ^ rotated ~-162 ~ run teleport @s ^-0.3 ^0.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=23}] positioned ^0.3 ^ ^ rotated ~-144 ~ run teleport @s ^-0.3 ^0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=24}] positioned ^0.3 ^ ^ rotated ~-126 ~ run teleport @s ^-0.3 ^0.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=25}] positioned ^0.3 ^ ^ rotated ~-108 ~ run teleport @s ^-0.3 ^0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^0.3 ^ ^ rotated ~-90 ~ run teleport @s ^-0.3 ^0.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^0.3 ^ ^ rotated ~-72 ~ run teleport @s ^-0.3 ^0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^0.3 ^ ^ rotated ~-54 ~ run teleport @s ^-0.3 ^0.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^0.3 ^ ^ rotated ~-36 ~ run teleport @s ^-0.3 ^0.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=30}] positioned ^0.3 ^ ^ rotated ~-18 ~ run teleport @s ^-0.3 ^0.1 ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..15}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProgress=16..30}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 6
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0