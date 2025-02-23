scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-4 ^2.667
teleport @s[scores={AnimationProgress=2}] ^ ^-3.667 ^2.533
teleport @s[scores={AnimationProgress=3}] ^ ^-3.467 ^2.4
teleport @s[scores={AnimationProgress=4}] ^ ^-3.267 ^2.267
teleport @s[scores={AnimationProgress=5}] ^ ^-3.067 ^2.133
teleport @s[scores={AnimationProgress=6}] ^ ^-3 ^2
teleport @s[scores={AnimationProgress=7}] ^ ^-2.8 ^1.867
teleport @s[scores={AnimationProgress=8}] ^ ^-2.6 ^1.733
teleport @s[scores={AnimationProgress=9}] ^ ^-2.4 ^1.6
teleport @s[scores={AnimationProgress=10}] ^ ^-2.2 ^1.467
teleport @s[scores={AnimationProgress=11}] ^ ^-2 ^1.333
teleport @s[scores={AnimationProgress=12}] ^ ^-1.8 ^1.2
teleport @s[scores={AnimationProgress=13}] ^ ^-1.6 ^1.067
teleport @s[scores={AnimationProgress=14}] ^ ^-1.4 ^0.933
teleport @s[scores={AnimationProgress=15}] ^ ^-1.2 ^0.8
teleport @s[scores={AnimationProgress=16}] ^ ^-1 ^0.667
teleport @s[scores={AnimationProgress=17}] ^ ^-0.8 ^0.533
teleport @s[scores={AnimationProgress=18}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=19}] ^ ^-0.4 ^0.267
teleport @s[scores={AnimationProgress=20}] ^ ^-0.2 ^0.133
execute at @s[scores={AnimationProgress=1..2}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.933 ^-0.8
execute at @s[scores={AnimationProgress=3..4}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.773 ^-0.787
execute at @s[scores={AnimationProgress=5..6}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.613 ^-0.773
execute at @s[scores={AnimationProgress=7..8}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.453 ^-0.76
execute at @s[scores={AnimationProgress=9..10}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.293 ^-0.747
execute at @s[scores={AnimationProgress=11..12}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^0.133 ^-0.733
execute at @s[scores={AnimationProgress=13..14}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.027 ^-0.72
execute at @s[scores={AnimationProgress=15..16}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.187 ^-0.707
execute at @s[scores={AnimationProgress=17..18}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.347 ^-0.693
execute at @s[scores={AnimationProgress=19..20}] positioned ^ ^0.667 ^0.667 run teleport @s ^ ^-0.507 ^-0.68
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[80.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 35
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0