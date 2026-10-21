scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^ ^ ^0.05 positioned ^-0.375 ^-1.46 ^ rotated ~108 -4.5 run teleport @s ^0.35625 ^1.387 ^
execute if entity @s[scores={AnimationProgress=2}] positioned ^ ^ ^0.1 positioned ^-0.375 ^-1.46 ^ rotated ~36 -9 run teleport @s ^0.3375 ^1.314 ^
execute if entity @s[scores={AnimationProgress=3}] positioned ^ ^ ^0.15 positioned ^-0.375 ^-1.46 ^ rotated ~-36 -13.5 run teleport @s ^0.31875 ^1.241 ^
execute if entity @s[scores={AnimationProgress=4}] positioned ^ ^ ^0.2 positioned ^-0.375 ^-1.46 ^ rotated ~-108 -18 run teleport @s ^0.3 ^1.168 ^
execute if entity @s[scores={AnimationProgress=5}] positioned ^ ^ ^0.25 positioned ^-0.375 ^-1.46 ^ rotated ~180 -22.5 run teleport @s ^0.28125 ^1.095 ^
execute if entity @s[scores={AnimationProgress=6}] positioned ^ ^ ^0.3 positioned ^-0.375 ^-1.46 ^ rotated ~108 -27 run teleport @s ^0.2625 ^1.022 ^
execute if entity @s[scores={AnimationProgress=7}] positioned ^ ^ ^0.35 positioned ^-0.375 ^-1.46 ^ rotated ~36 -31.5 run teleport @s ^0.24375 ^0.949 ^
execute if entity @s[scores={AnimationProgress=8}] positioned ^ ^ ^0.4 positioned ^-0.375 ^-1.46 ^ rotated ~-36 -36 run teleport @s ^0.225 ^0.876 ^
execute if entity @s[scores={AnimationProgress=9}] positioned ^ ^ ^0.45 positioned ^-0.375 ^-1.46 ^ rotated ~-108 -40.5 run teleport @s ^0.20625 ^0.803 ^
execute if entity @s[scores={AnimationProgress=10}] positioned ^ ^ ^0.5 positioned ^-0.375 ^-1.46 ^ rotated ~180 -45 run teleport @s ^0.1875 ^0.73 ^
execute if entity @s[scores={AnimationProgress=11}] positioned ^ ^ ^0.55 positioned ^-0.375 ^-1.46 ^ rotated ~108 -49.5 run teleport @s ^0.16875 ^0.657 ^
execute if entity @s[scores={AnimationProgress=12}] positioned ^ ^ ^0.6 positioned ^-0.375 ^-1.46 ^ rotated ~36 -54 run teleport @s ^0.15 ^0.584 ^
execute if entity @s[scores={AnimationProgress=13}] positioned ^ ^ ^0.65 positioned ^-0.375 ^-1.46 ^ rotated ~-36 -58.5 run teleport @s ^0.13125 ^0.511 ^
execute if entity @s[scores={AnimationProgress=14}] positioned ^ ^ ^0.7 positioned ^-0.375 ^-1.46 ^ rotated ~-108 -63 run teleport @s ^0.1125 ^0.438 ^
execute if entity @s[scores={AnimationProgress=15}] positioned ^ ^ ^0.75 positioned ^-0.375 ^-1.46 ^ rotated ~180 -67.5 run teleport @s ^0.09375 ^0.365 ^
execute if entity @s[scores={AnimationProgress=16}] positioned ^ ^ ^0.8 positioned ^-0.375 ^-1.46 ^ rotated ~108 -72 run teleport @s ^0.075 ^0.292 ^
execute if entity @s[scores={AnimationProgress=17}] positioned ^ ^ ^0.85 positioned ^-0.375 ^-1.46 ^ rotated ~36 -76.5 run teleport @s ^0.05625 ^0.219 ^
execute if entity @s[scores={AnimationProgress=18}] positioned ^ ^ ^0.9 positioned ^-0.375 ^-1.46 ^ rotated ~-36 -81 run teleport @s ^0.0375 ^0.146 ^
execute if entity @s[scores={AnimationProgress=19}] positioned ^ ^ ^0.95 positioned ^-0.375 ^-1.46 ^ rotated ~108 -85.5 run teleport @s ^0.01875 ^0.073 ^
execute at @s run teleport @s ~ ~ ~ ~-90 0
data modify entity @s[scores={AnimationProgress=1}] transformation.scale set value [0.95f,0.95f,0.95f]
data modify entity @s[scores={AnimationProgress=2}] transformation.scale set value [0.9f,0.9f,0.9f]
data modify entity @s[scores={AnimationProgress=3}] transformation.scale set value [0.85f,0.85f,0.85f]
data modify entity @s[scores={AnimationProgress=4}] transformation.scale set value [0.8f,0.8f,0.8f]
data modify entity @s[scores={AnimationProgress=5}] transformation.scale set value [0.75f,0.75f,0.75f]
data modify entity @s[scores={AnimationProgress=6}] transformation.scale set value [0.7f,0.7f,0.7f]
data modify entity @s[scores={AnimationProgress=7}] transformation.scale set value [0.65f,0.65f,0.65f]
data modify entity @s[scores={AnimationProgress=8}] transformation.scale set value [0.6f,0.6f,0.6f]
data modify entity @s[scores={AnimationProgress=9}] transformation.scale set value [0.55f,0.55f,0.55f]
data modify entity @s[scores={AnimationProgress=10}] transformation.scale set value [0.5f,0.5f,0.5f]
data modify entity @s[scores={AnimationProgress=11}] transformation.scale set value [0.45f,0.45f,0.45f]
data modify entity @s[scores={AnimationProgress=12}] transformation.scale set value [0.4f,0.4f,0.4f]
data modify entity @s[scores={AnimationProgress=13}] transformation.scale set value [0.35f,0.35f,0.35f]
data modify entity @s[scores={AnimationProgress=14}] transformation.scale set value [0.3f,0.3f,0.3f]
data modify entity @s[scores={AnimationProgress=15}] transformation.scale set value [0.25f,0.25f,0.25f]
data modify entity @s[scores={AnimationProgress=16}] transformation.scale set value [0.2f,0.2f,0.2f]
data modify entity @s[scores={AnimationProgress=17}] transformation.scale set value [0.15f,0.15f,0.15f]
data modify entity @s[scores={AnimationProgress=18}] transformation.scale set value [0.1f,0.1f,0.1f]
data modify entity @s[scores={AnimationProgress=19}] transformation.scale set value [0.05f,0.05f,0.05f]
data modify entity @s[scores={AnimationProgress=20..}] transformation.scale set value [0.001f,0.001f,0.001f]
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationY 720
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationZ 45
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20