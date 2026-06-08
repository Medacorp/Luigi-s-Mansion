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
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationZ 160
execute if entity @s[scores={AnimationProgress=6..12}] run scoreboard players add @s AnimationRotationZ 160
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0