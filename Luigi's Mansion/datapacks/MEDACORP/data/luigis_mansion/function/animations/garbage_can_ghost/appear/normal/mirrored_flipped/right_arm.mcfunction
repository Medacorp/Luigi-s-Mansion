scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.3 ^ ^ rotated ~80 ~ run teleport @s ^0.3 ^-2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.3 ^ ^ rotated ~72 ~ run teleport @s ^0.3 ^-1.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.3 ^ ^ rotated ~64 ~ run teleport @s ^0.3 ^-1.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.3 ^ ^ rotated ~56 ~ run teleport @s ^0.3 ^-1.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.3 ^ ^ rotated ~48 ~ run teleport @s ^0.3 ^-1.2 ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.3 ^ ^ rotated ~40 ~ run teleport @s ^0.3 ^-1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.3 ^ ^ rotated ~32 ~ run teleport @s ^0.3 ^-0.8 ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.3 ^ ^ rotated ~24 ~ run teleport @s ^0.3 ^-0.6 ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.3 ^ ^ rotated ~16 ~ run teleport @s ^0.3 ^-0.4 ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^-0.3 ^ ^ rotated ~8 ~ run teleport @s ^0.3 ^-0.2 ^ ~ ~
teleport @s[scores={AnimationProgress=12}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=13}] ^ ^-0.8 ^
teleport @s[scores={AnimationProgress=14}] ^ ^-0.4 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1760
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..11}] AnimationRotationZ 160
scoreboard players add @s[scores={AnimationProgress=12..13}] AnimationRotationZ 160
scoreboard players remove @s[scores={AnimationProgress=14..15}] AnimationRotationZ 160
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.banana_peel
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
