scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.35 ^ ^ rotated ~-180 ~ run teleport @s ^-0.35 ^3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.35 ^ ^ rotated ~-162 ~ run teleport @s ^-0.35 ^2.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.35 ^ ^ rotated ~-144 ~ run teleport @s ^-0.35 ^2.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.35 ^ ^ rotated ~-126 ~ run teleport @s ^-0.35 ^2.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.35 ^ ^ rotated ~-108 ~ run teleport @s ^-0.35 ^2.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.35 ^ ^ rotated ~-90 ~ run teleport @s ^-0.35 ^2.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.35 ^ ^ rotated ~-72 ~ run teleport @s ^-0.35 ^2.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.35 ^ ^ rotated ~-54 ~ run teleport @s ^-0.35 ^2.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.35 ^ ^ rotated ~-36 ~ run teleport @s ^-0.35 ^2.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.35 ^ ^ rotated ~-18 ~ run teleport @s ^-0.35 ^2.1 ^ ~ ~
teleport @s[scores={AnimationProgress=11}] ^ ^2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.35 ^ ^ rotated ~-342 ~ run teleport @s ^-0.35 ^1.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.35 ^ ^ rotated ~-324 ~ run teleport @s ^-0.35 ^1.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.35 ^ ^ rotated ~-306 ~ run teleport @s ^-0.35 ^1.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.35 ^ ^ rotated ~-288 ~ run teleport @s ^-0.35 ^1.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.35 ^ ^ rotated ~-270 ~ run teleport @s ^-0.35 ^1.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.35 ^ ^ rotated ~-252 ~ run teleport @s ^-0.35 ^1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.35 ^ ^ rotated ~-234 ~ run teleport @s ^-0.35 ^1.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.35 ^ ^ rotated ~-216 ~ run teleport @s ^-0.35 ^1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=20}] positioned ^0.35 ^ ^ rotated ~-198 ~ run teleport @s ^-0.35 ^1.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=21}] positioned ^0.35 ^ ^ rotated ~-180 ~ run teleport @s ^-0.35 ^1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=22}] positioned ^0.35 ^ ^ rotated ~-162 ~ run teleport @s ^-0.35 ^0.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=23}] positioned ^0.35 ^ ^ rotated ~-144 ~ run teleport @s ^-0.35 ^0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=24}] positioned ^0.35 ^ ^ rotated ~-126 ~ run teleport @s ^-0.35 ^0.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=25}] positioned ^0.35 ^ ^ rotated ~-108 ~ run teleport @s ^-0.35 ^0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^0.35 ^ ^ rotated ~-90 ~ run teleport @s ^-0.35 ^0.5 ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^0.35 ^ ^ rotated ~-72 ~ run teleport @s ^-0.35 ^0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^0.35 ^ ^ rotated ~-54 ~ run teleport @s ^-0.35 ^0.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^0.35 ^ ^ rotated ~-36 ~ run teleport @s ^-0.35 ^0.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=30}] positioned ^0.35 ^ ^ rotated ~-18 ~ run teleport @s ^-0.35 ^0.1 ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,90.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=21..50}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0