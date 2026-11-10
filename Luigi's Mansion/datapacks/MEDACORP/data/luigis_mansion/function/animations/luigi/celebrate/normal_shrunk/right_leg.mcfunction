scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=4}] ^ ^0.05 ^
teleport @s[scores={AnimationProgress=5}] ^ ^0.1 ^
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.0625 ^ ^ rotated ~-18 0 run teleport @s ^-0.0625 ^0.2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.0625 ^ ^ rotated ~-36 0 run teleport @s ^-0.0625 ^0.3 ^ ~ 0
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.0625 ^ ^ rotated ~-54 0 run teleport @s ^-0.0625 ^0.4 ^ ~ 0
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.0625 ^ ^ rotated ~-72 0 run teleport @s ^-0.0625 ^0.475 ^ ~ 0
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.0625 ^ ^ rotated ~-90 0 run teleport @s ^-0.0625 ^0.55 ^ ~ 0
execute if entity @s[scores={AnimationProgress=11}] positioned ^0.0625 ^ ^ rotated ~-108 0 run teleport @s ^-0.0625 ^0.6 ^ ~ 0
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.0625 ^ ^ rotated ~-126 0 run teleport @s ^-0.0625 ^0.65 ^ ~ 0
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.0625 ^ ^ rotated ~-144 0 run teleport @s ^-0.0625 ^0.675 ^ ~ 0
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.0625 ^ ^ rotated ~-162 0 run teleport @s ^-0.0625 ^0.7 ^ ~ 0
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.0625 ^ ^ rotated ~-180 0 run teleport @s ^-0.0625 ^0.675 ^ ~ 0
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.0625 ^ ^ rotated ~162 0 run teleport @s ^-0.0625 ^0.6 ^ ~ 0
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.0625 ^ ^ rotated ~144 0 run teleport @s ^-0.0625 ^0.575 ^ ~ 0
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.0625 ^ ^ rotated ~126 0 run teleport @s ^-0.0625 ^0.55 ^ ~ 0
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.0625 ^ ^ rotated ~108 0 run teleport @s ^-0.0625 ^0.5 ^ ~ 0
execute if entity @s[scores={AnimationProgress=20}] positioned ^0.0625 ^ ^ rotated ~90 0 run teleport @s ^-0.0625 ^0.45 ^ ~ 0
execute if entity @s[scores={AnimationProgress=21}] positioned ^0.0625 ^ ^ rotated ~72 0 run teleport @s ^-0.0625 ^0.375 ^ ~ 0
execute if entity @s[scores={AnimationProgress=22}] positioned ^0.0625 ^ ^ rotated ~54 0 run teleport @s ^-0.0625 ^0.3 ^ ~ 0
execute if entity @s[scores={AnimationProgress=23}] positioned ^0.0625 ^ ^ rotated ~36 0 run teleport @s ^-0.0625 ^0.2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=24}] positioned ^0.0625 ^ ^ rotated ~18 0 run teleport @s ^-0.0625 ^0.1 ^ ~ 0
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=4..6}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 60