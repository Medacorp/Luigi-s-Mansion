scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.3 ^ ^ rotated ~-20 ~ run teleport @s ^-0.3 ^0.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.3 ^ ^ rotated ~-40 ~ run teleport @s ^-0.3 ^0.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.3 ^ ^ rotated ~-60 ~ run teleport @s ^-0.3 ^0.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.3 ^ ^ rotated ~-80 ~ run teleport @s ^-0.3 ^0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.3 ^ ^ rotated ~-100 ~ run teleport @s ^-0.3 ^0.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.3 ^ ^ rotated ~-120 ~ run teleport @s ^-0.3 ^0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.3 ^ ^ rotated ~-140 ~ run teleport @s ^-0.3 ^0.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.3 ^ ^ rotated ~-160 ~ run teleport @s ^-0.3 ^0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^0.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.3 ^ ^ rotated ~-200 ~ run teleport @s ^-0.3 ^1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^0.3 ^ ^ rotated ~-220 ~ run teleport @s ^-0.3 ^1.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.3 ^ ^ rotated ~-240 ~ run teleport @s ^-0.3 ^1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.3 ^ ^ rotated ~-260 ~ run teleport @s ^-0.3 ^1.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.3 ^ ^ rotated ~-280 ~ run teleport @s ^-0.3 ^1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.3 ^ ^ rotated ~-300 ~ run teleport @s ^-0.3 ^1.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.3 ^ ^ rotated ~-320 ~ run teleport @s ^-0.3 ^1.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.3 ^ ^ rotated ~-340 ~ run teleport @s ^-0.3 ^1.7 ^ ~ ~
teleport @s[scores={AnimationProgress=18}] ^ ^1.8 ^
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.3 ^ ^ rotated ~-20 ~ run teleport @s ^-0.3 ^1.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=20}] positioned ^0.3 ^ ^ rotated ~-40 ~ run teleport @s ^-0.3 ^2 ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=6..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0