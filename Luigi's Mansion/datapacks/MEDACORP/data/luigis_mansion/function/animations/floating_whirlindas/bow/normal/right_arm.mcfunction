scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.46 ^ ^ rotated ~18 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.46 ^ ^ rotated ~36 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.46 ^ ^ rotated ~54 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.46 ^ ^ rotated ~72 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.46 ^ ^ rotated ~90 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.46 ^ ^ rotated ~108 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.46 ^ ^ rotated ~126 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.46 ^ ^ rotated ~144 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.46 ^ ^ rotated ~162 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.46 ^ ^ rotated ~-180 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=11}] positioned ^0.46 ^ ^ rotated ~-162 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.46 ^ ^ rotated ~-144 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.46 ^ ^ rotated ~-126 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.46 ^ ^ rotated ~-108 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.46 ^ ^ rotated ~-90 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.46 ^ ^ rotated ~-72 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.46 ^ ^ rotated ~-54 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.46 ^ ^ rotated ~-36 0 run teleport @s ^-0.46 ^ ^
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.46 ^ ^ rotated ~-18 0 run teleport @s ^-0.46 ^ ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=101..120}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=101..120}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=101..120}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0