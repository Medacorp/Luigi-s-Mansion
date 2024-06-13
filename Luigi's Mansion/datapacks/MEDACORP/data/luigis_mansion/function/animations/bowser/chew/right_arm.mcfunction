scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=12}] ^ ^-2.75 ^1.9
teleport @s[scores={AnimationProgress=13}] ^ ^-2.6 ^1.8
teleport @s[scores={AnimationProgress=14}] ^ ^-2.45 ^1.7
teleport @s[scores={AnimationProgress=15}] ^ ^-2.3 ^1.6
teleport @s[scores={AnimationProgress=16}] ^ ^-2.25 ^1.5
teleport @s[scores={AnimationProgress=17}] ^ ^-2.1 ^1.4
teleport @s[scores={AnimationProgress=18}] ^ ^-1.95 ^1.3
teleport @s[scores={AnimationProgress=19}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=20}] ^ ^-1.65 ^1.1
teleport @s[scores={AnimationProgress=21}] ^ ^-1.5 ^1
teleport @s[scores={AnimationProgress=22}] ^ ^-1.35 ^0.9
teleport @s[scores={AnimationProgress=23}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=24}] ^ ^-1.05 ^0.7
teleport @s[scores={AnimationProgress=25}] ^ ^-0.9 ^0.6
teleport @s[scores={AnimationProgress=26}] ^ ^-0.75 ^0.5
teleport @s[scores={AnimationProgress=27}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=28}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=29}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=30}] ^ ^-0.15 ^0.1
execute at @s[scores={AnimationProgress=1..12}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.7 ^-0.6
execute at @s[scores={AnimationProgress=13..14}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.58 ^-0.59
execute at @s[scores={AnimationProgress=15..16}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.46 ^-0.58
execute at @s[scores={AnimationProgress=17..18}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.34 ^-0.57
execute at @s[scores={AnimationProgress=19..20}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.22 ^-0.56
execute at @s[scores={AnimationProgress=21..22}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^0.1 ^-0.55
execute at @s[scores={AnimationProgress=23..24}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^-0.02 ^-0.54
execute at @s[scores={AnimationProgress=25..26}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^-0.14 ^-0.53
execute at @s[scores={AnimationProgress=27..28}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^-0.26 ^-0.52
execute at @s[scores={AnimationProgress=29..30}] positioned ^ ^0.5 ^0.5 run teleport @s ^ ^-0.38 ^-0.51
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0