scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.375 ^ ^ rotated ~-18 0 run teleport @s ^-0.375 ^-0.4 ^ ~ 0
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.375 ^ ^ rotated ~-36 0 run teleport @s ^-0.375 ^-0.8 ^ ~ 0
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.375 ^ ^ rotated ~-54 0 run teleport @s ^-0.375 ^-1.2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.375 ^ ^ rotated ~-72 0 run teleport @s ^-0.375 ^-1.5 ^ ~ 0
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.375 ^ ^ rotated ~-90 0 run teleport @s ^-0.375 ^-1.8 ^ ~ 0
execute if entity @s[scores={AnimationProgress=11}] positioned ^0.375 ^ ^ rotated ~-108 0 run teleport @s ^-0.375 ^-2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.375 ^ ^ rotated ~-126 0 run teleport @s ^-0.375 ^-2.2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.375 ^ ^ rotated ~-144 0 run teleport @s ^-0.375 ^-2.3 ^ ~ 0
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.375 ^ ^ rotated ~-162 0 run teleport @s ^-0.375 ^-2.4 ^ ~ 0
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.375 ^ ^ rotated ~-180 0 run teleport @s ^-0.375 ^-2.5 ^ ~ 0
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.375 ^ ^ rotated ~162 0 run teleport @s ^-0.375 ^-2.4 ^ ~ 0
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.375 ^ ^ rotated ~144 0 run teleport @s ^-0.375 ^-2.3 ^ ~ 0
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.375 ^ ^ rotated ~126 0 run teleport @s ^-0.375 ^-2.2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.375 ^ ^ rotated ~108 0 run teleport @s ^-0.375 ^-2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=20}] positioned ^0.375 ^ ^ rotated ~90 0 run teleport @s ^-0.375 ^-1.8 ^ ~ 0
execute if entity @s[scores={AnimationProgress=21}] positioned ^0.375 ^ ^ rotated ~72 0 run teleport @s ^-0.375 ^-1.5 ^ ~ 0
execute if entity @s[scores={AnimationProgress=22}] positioned ^0.375 ^ ^ rotated ~54 0 run teleport @s ^-0.375 ^-1.2 ^ ~ 0
execute if entity @s[scores={AnimationProgress=23}] positioned ^0.375 ^ ^ rotated ~36 0 run teleport @s ^-0.375 ^-0.8 ^ ~ 0
execute if entity @s[scores={AnimationProgress=24}] positioned ^0.375 ^ ^ rotated ~18 0 run teleport @s ^-0.375 ^-0.4 ^ ~ 0
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 180
scoreboard players add @s[scores={AnimationProgress=25..29}] AnimationRotationX 360
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 60