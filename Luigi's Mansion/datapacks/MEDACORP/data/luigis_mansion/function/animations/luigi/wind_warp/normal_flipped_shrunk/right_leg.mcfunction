scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^ ^ ^0.05 positioned ^-0.0625 ^0.385 ^ rotated ~-108 4.5 run teleport @s ^0.059375 ^-0.35625 ^
execute if entity @s[scores={AnimationProgress=2}] positioned ^ ^ ^0.1 positioned ^-0.0625 ^0.385 ^ rotated ~-36 9 run teleport @s ^0.05625 ^-0.3375 ^
execute if entity @s[scores={AnimationProgress=3}] positioned ^ ^ ^0.15 positioned ^-0.0625 ^0.385 ^ rotated ~36 13.5 run teleport @s ^0.053125 ^-0.31875 ^
execute if entity @s[scores={AnimationProgress=4}] positioned ^ ^ ^0.2 positioned ^-0.0625 ^0.385 ^ rotated ~108 18 run teleport @s ^0.05 ^-0.3 ^
execute if entity @s[scores={AnimationProgress=5}] positioned ^ ^ ^0.25 positioned ^-0.0625 ^0.385 ^ rotated ~-180 22.5 run teleport @s ^0.046875 ^-0.28125 ^
execute if entity @s[scores={AnimationProgress=6}] positioned ^ ^ ^0.3 positioned ^-0.0625 ^0.385 ^ rotated ~-108 27 run teleport @s ^0.04375 ^-0.2625 ^
execute if entity @s[scores={AnimationProgress=7}] positioned ^ ^ ^0.35 positioned ^-0.0625 ^0.385 ^ rotated ~-36 31.5 run teleport @s ^0.040625 ^-0.24375 ^
execute if entity @s[scores={AnimationProgress=8}] positioned ^ ^ ^0.4 positioned ^-0.0625 ^0.385 ^ rotated ~36 36 run teleport @s ^0.0375 ^-0.225 ^
execute if entity @s[scores={AnimationProgress=9}] positioned ^ ^ ^0.45 positioned ^-0.0625 ^0.385 ^ rotated ~108 40.5 run teleport @s ^0.034375 ^-0.20625 ^
execute if entity @s[scores={AnimationProgress=10}] positioned ^ ^ ^0.5 positioned ^-0.0625 ^0.385 ^ rotated ~-180 45 run teleport @s ^0.03125 ^-0.1875 ^
execute if entity @s[scores={AnimationProgress=11}] positioned ^ ^ ^0.55 positioned ^-0.0625 ^0.385 ^ rotated ~-108 49.5 run teleport @s ^0.028125 ^-0.16875 ^
execute if entity @s[scores={AnimationProgress=12}] positioned ^ ^ ^0.6 positioned ^-0.0625 ^0.385 ^ rotated ~-36 54 run teleport @s ^0.025 ^-0.15 ^
execute if entity @s[scores={AnimationProgress=13}] positioned ^ ^ ^0.65 positioned ^-0.0625 ^0.385 ^ rotated ~36 58.5 run teleport @s ^0.021875 ^-0.13125 ^
execute if entity @s[scores={AnimationProgress=14}] positioned ^ ^ ^0.7 positioned ^-0.0625 ^0.385 ^ rotated ~108 63 run teleport @s ^0.01875 ^-0.1125 ^
execute if entity @s[scores={AnimationProgress=15}] positioned ^ ^ ^0.75 positioned ^-0.0625 ^0.385 ^ rotated ~-180 67.5 run teleport @s ^0.015625 ^-0.09375 ^
execute if entity @s[scores={AnimationProgress=16}] positioned ^ ^ ^0.8 positioned ^-0.0625 ^0.385 ^ rotated ~-108 72 run teleport @s ^0.0125 ^-0.075 ^
execute if entity @s[scores={AnimationProgress=17}] positioned ^ ^ ^0.85 positioned ^-0.0625 ^0.385 ^ rotated ~-36 76.5 run teleport @s ^0.009375 ^-0.05625 ^
execute if entity @s[scores={AnimationProgress=18}] positioned ^ ^ ^0.9 positioned ^-0.0625 ^0.385 ^ rotated ~36 81 run teleport @s ^0.00625 ^-0.0375 ^
execute if entity @s[scores={AnimationProgress=19}] positioned ^ ^ ^0.95 positioned ^-0.0625 ^0.385 ^ rotated ~-108 85.5 run teleport @s ^0.003125 ^-0.01875 ^
execute at @s run teleport @s ~ ~ ~ ~90 0
data modify entity @s[scores={AnimationProgress=1}] transformation.scale set value [0.475f,0.475f,0.475f]
data modify entity @s[scores={AnimationProgress=2}] transformation.scale set value [0.45f,0.45f,0.45f]
data modify entity @s[scores={AnimationProgress=3}] transformation.scale set value [0.425f,0.425f,0.425f]
data modify entity @s[scores={AnimationProgress=4}] transformation.scale set value [0.4f,0.4f,0.4f]
data modify entity @s[scores={AnimationProgress=5}] transformation.scale set value [0.375f,0.375f,0.375f]
data modify entity @s[scores={AnimationProgress=6}] transformation.scale set value [0.35f,0.35f,0.35f]
data modify entity @s[scores={AnimationProgress=7}] transformation.scale set value [0.325f,0.325f,0.325f]
data modify entity @s[scores={AnimationProgress=8}] transformation.scale set value [0.3f,0.3f,0.3f]
data modify entity @s[scores={AnimationProgress=9}] transformation.scale set value [0.275f,0.275f,0.275f]
data modify entity @s[scores={AnimationProgress=10}] transformation.scale set value [0.25f,0.25f,0.25f]
data modify entity @s[scores={AnimationProgress=11}] transformation.scale set value [0.225f,0.225f,0.225f]
data modify entity @s[scores={AnimationProgress=12}] transformation.scale set value [0.2f,0.2f,0.2f]
data modify entity @s[scores={AnimationProgress=13}] transformation.scale set value [0.175f,0.175f,0.175f]
data modify entity @s[scores={AnimationProgress=14}] transformation.scale set value [0.15f,0.15f,0.15f]
data modify entity @s[scores={AnimationProgress=15}] transformation.scale set value [0.125f,0.125f,0.125f]
data modify entity @s[scores={AnimationProgress=16}] transformation.scale set value [0.1f,0.1f,0.1f]
data modify entity @s[scores={AnimationProgress=17}] transformation.scale set value [0.075f,0.075f,0.075f]
data modify entity @s[scores={AnimationProgress=18}] transformation.scale set value [0.05f,0.05f,0.05f]
data modify entity @s[scores={AnimationProgress=19}] transformation.scale set value [0.025f,0.025f,0.025f]
data modify entity @s[scores={AnimationProgress=20..}] transformation.scale set value [0.001f,0.001f,0.001f]
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationY 720
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationZ 45
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20