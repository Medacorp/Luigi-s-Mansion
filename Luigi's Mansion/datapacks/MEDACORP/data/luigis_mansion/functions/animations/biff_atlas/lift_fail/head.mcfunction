scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^-0.03 ^0.02
teleport @s[scores={AnimationProgress=2}] ^ ^-0.06 ^0.04
teleport @s[scores={AnimationProgress=3}] ^ ^-0.09 ^0.06
teleport @s[scores={AnimationProgress=4}] ^ ^-0.12 ^0.08
teleport @s[scores={AnimationProgress=5}] ^ ^-0.15 ^0.1
teleport @s[scores={AnimationProgress=6}] ^ ^-0.18 ^0.12
teleport @s[scores={AnimationProgress=7}] ^ ^-0.21 ^0.14
teleport @s[scores={AnimationProgress=8}] ^ ^-0.24 ^0.16
teleport @s[scores={AnimationProgress=9}] ^ ^-0.27 ^0.18
teleport @s[scores={AnimationProgress=10}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=11}] ^ ^-0.33 ^0.22
teleport @s[scores={AnimationProgress=12}] ^ ^-0.36 ^0.24
teleport @s[scores={AnimationProgress=13}] ^ ^-0.39 ^0.26
teleport @s[scores={AnimationProgress=14}] ^ ^-0.42 ^0.28
teleport @s[scores={AnimationProgress=15}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=16}] ^ ^-0.48 ^0.32
teleport @s[scores={AnimationProgress=17}] ^ ^-0.51 ^0.34
teleport @s[scores={AnimationProgress=18}] ^ ^-0.54 ^0.36
teleport @s[scores={AnimationProgress=19}] ^ ^-0.57 ^0.38
teleport @s[scores={AnimationProgress=20..80}] ^ ^-0.6 ^0.4
teleport @s[scores={AnimationProgress=81}] ^ ^-0.57 ^0.38
teleport @s[scores={AnimationProgress=82}] ^ ^-0.54 ^0.36
teleport @s[scores={AnimationProgress=83}] ^ ^-0.51 ^0.34
teleport @s[scores={AnimationProgress=84}] ^ ^-0.48 ^0.32
teleport @s[scores={AnimationProgress=85}] ^ ^-0.45 ^0.3
teleport @s[scores={AnimationProgress=86}] ^ ^-0.42 ^0.28
teleport @s[scores={AnimationProgress=87}] ^ ^-0.39 ^0.26
teleport @s[scores={AnimationProgress=88}] ^ ^-0.36 ^0.24
teleport @s[scores={AnimationProgress=89}] ^ ^-0.33 ^0.22
teleport @s[scores={AnimationProgress=90}] ^ ^-0.3 ^0.2
teleport @s[scores={AnimationProgress=91}] ^ ^-0.27 ^0.18
teleport @s[scores={AnimationProgress=92}] ^ ^-0.24 ^0.16
teleport @s[scores={AnimationProgress=93}] ^ ^-0.21 ^0.14
teleport @s[scores={AnimationProgress=94}] ^ ^-0.18 ^0.12
teleport @s[scores={AnimationProgress=95}] ^ ^-0.15 ^0.1
teleport @s[scores={AnimationProgress=96}] ^ ^-0.12 ^0.08
teleport @s[scores={AnimationProgress=97}] ^ ^-0.09 ^0.06
teleport @s[scores={AnimationProgress=98}] ^ ^-0.06 ^0.04
teleport @s[scores={AnimationProgress=99}] ^ ^-0.03 ^0.02
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.01f,0.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=41..50}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProgress=81..100}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=100..}] AnimationProgress 0