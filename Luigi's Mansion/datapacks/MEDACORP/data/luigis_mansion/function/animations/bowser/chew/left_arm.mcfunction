scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11}] ^ ^-4 ^2.667
teleport @s[scores={AnimationProgress=12}] ^ ^-3.667 ^2.533
teleport @s[scores={AnimationProgress=13}] ^ ^-3.467 ^2.4
teleport @s[scores={AnimationProgress=14}] ^ ^-3.267 ^2.267
teleport @s[scores={AnimationProgress=15}] ^ ^-3.067 ^2.133
teleport @s[scores={AnimationProgress=16}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=17}] ^ ^-2.8 ^1.867
teleport @s[scores={AnimationProgress=18}] ^ ^-2.6 ^1.733
teleport @s[scores={AnimationProgress=19}] ^ ^-2.4 ^1.6
teleport @s[scores={AnimationProgress=20}] ^ ^-2.2 ^1.467
teleport @s[scores={AnimationProgress=21}] ^ ^-2 ^1.333
teleport @s[scores={AnimationProgress=22}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=23}] ^ ^-1.6 ^1.067
teleport @s[scores={AnimationProgress=24}] ^ ^-1.4 ^0.933
teleport @s[scores={AnimationProgress=25}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=26}] ^ ^-1 ^0.667
teleport @s[scores={AnimationProgress=27}] ^ ^-0.8 ^0.533
teleport @s[scores={AnimationProgress=28}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=29}] ^ ^-0.4 ^0.267
teleport @s[scores={AnimationProgress=30}] ^ ^-0.2 ^0.133
execute at @s[scores={AnimationProgress=1..12}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.933 ^-0.8
execute at @s[scores={AnimationProgress=13..14}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.773 ^-0.787
execute at @s[scores={AnimationProgress=15..16}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.613 ^-0.773
execute at @s[scores={AnimationProgress=17..18}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.453 ^-0.76
execute at @s[scores={AnimationProgress=19..20}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.293 ^-0.747
execute at @s[scores={AnimationProgress=21..22}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.133 ^-0.733
execute at @s[scores={AnimationProgress=23..24}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.027 ^-0.72
execute at @s[scores={AnimationProgress=25..26}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.187 ^-0.707
execute at @s[scores={AnimationProgress=27..28}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.347 ^-0.693
execute at @s[scores={AnimationProgress=29..30}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.507 ^-0.68
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0