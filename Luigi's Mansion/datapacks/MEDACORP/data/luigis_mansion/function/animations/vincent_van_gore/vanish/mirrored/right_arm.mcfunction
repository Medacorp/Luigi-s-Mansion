scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.46 ^ ^ rotated ~-36 ~ run teleport @s ^-0.46 ^0.05 ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.46 ^ ^ rotated ~-72 ~ run teleport @s ^-0.46 ^0.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.46 ^ ^ rotated ~-108 ~ run teleport @s ^-0.46 ^0.15 ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.46 ^ ^ rotated ~-144 ~ run teleport @s ^-0.46 ^0.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.46 ^ ^ rotated ~-180 ~ run teleport @s ^-0.46 ^0.25 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.46 ^ ^ rotated ~-216 ~ run teleport @s ^-0.46 ^0.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.46 ^ ^ rotated ~-252 ~ run teleport @s ^-0.46 ^0.35 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.46 ^ ^ rotated ~-288 ~ run teleport @s ^-0.46 ^0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.46 ^ ^ rotated ~-324 ~ run teleport @s ^-0.46 ^0.45 ^ ~ ~
teleport @s[scores={AnimationProgress=10}] ^ ^0.5 ^
execute if entity @s[scores={AnimationProgress=11}] positioned ^0.46 ^ ^ rotated ~-36 ~ run teleport @s ^-0.46 ^0.55 ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.46 ^ ^ rotated ~-72 ~ run teleport @s ^-0.46 ^0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.46 ^ ^ rotated ~-108 ~ run teleport @s ^-0.46 ^0.65 ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.46 ^ ^ rotated ~-144 ~ run teleport @s ^-0.46 ^0.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.46 ^ ^ rotated ~-180 ~ run teleport @s ^-0.46 ^0.75 ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.46 ^ ^ rotated ~-216 ~ run teleport @s ^-0.46 ^0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.46 ^ ^ rotated ~-252 ~ run teleport @s ^-0.46 ^0.85 ^ ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.46 ^ ^ rotated ~-288 ~ run teleport @s ^-0.46 ^0.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.46 ^ ^ rotated ~-324 ~ run teleport @s ^-0.46 ^0.95 ^ ~ ~
teleport @s[scores={AnimationProgress=20}] ^ ^1 ^
execute if entity @s[scores={AnimationProgress=21}] positioned ^0.46 ^ ^ rotated ~-36 ~ run teleport @s ^-0.46 ^1.05 ^ ~ ~
execute if entity @s[scores={AnimationProgress=22}] positioned ^0.46 ^ ^ rotated ~-72 ~ run teleport @s ^-0.46 ^1.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=23}] positioned ^0.46 ^ ^ rotated ~-108 ~ run teleport @s ^-0.46 ^1.15 ^ ~ ~
execute if entity @s[scores={AnimationProgress=24}] positioned ^0.46 ^ ^ rotated ~-144 ~ run teleport @s ^-0.46 ^1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=25}] positioned ^0.46 ^ ^ rotated ~-180 ~ run teleport @s ^-0.46 ^1.25 ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^0.46 ^ ^ rotated ~-216 ~ run teleport @s ^-0.46 ^1.3 ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^0.46 ^ ^ rotated ~-252 ~ run teleport @s ^-0.46 ^1.35 ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^0.46 ^ ^ rotated ~-288 ~ run teleport @s ^-0.46 ^1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^0.46 ^ ^ rotated ~-324 ~ run teleport @s ^-0.46 ^1.45 ^ ~ ~
teleport @s[scores={AnimationProgress=30}] ^ ^1.5 ^
execute if entity @s[scores={AnimationProgress=31}] positioned ^0.46 ^ ^ rotated ~-36 ~ run teleport @s ^-0.46 ^1.55 ^ ~ ~
execute if entity @s[scores={AnimationProgress=32}] positioned ^0.46 ^ ^ rotated ~-72 ~ run teleport @s ^-0.46 ^1.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=33}] positioned ^0.46 ^ ^ rotated ~-108 ~ run teleport @s ^-0.46 ^1.65 ^ ~ ~
execute if entity @s[scores={AnimationProgress=34}] positioned ^0.46 ^ ^ rotated ~-144 ~ run teleport @s ^-0.46 ^1.7 ^ ~ ~
execute if entity @s[scores={AnimationProgress=35}] positioned ^0.46 ^ ^ rotated ~-180 ~ run teleport @s ^-0.46 ^1.75 ^ ~ ~
execute if entity @s[scores={AnimationProgress=36}] positioned ^0.46 ^ ^ rotated ~-216 ~ run teleport @s ^-0.46 ^1.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=37}] positioned ^0.46 ^ ^ rotated ~-252 ~ run teleport @s ^-0.46 ^1.85 ^ ~ ~
execute if entity @s[scores={AnimationProgress=38}] positioned ^0.46 ^ ^ rotated ~-288 ~ run teleport @s ^-0.46 ^1.9 ^ ~ ~
execute if entity @s[scores={AnimationProgress=39}] positioned ^0.46 ^ ^ rotated ~-324 ~ run teleport @s ^-0.46 ^1.95 ^ ~ ~
teleport @s[scores={AnimationProgress=40..}] ^ ^2 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,90.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0