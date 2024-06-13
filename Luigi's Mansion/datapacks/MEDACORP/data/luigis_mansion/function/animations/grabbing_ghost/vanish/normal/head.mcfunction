scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^0.1 ^ ~20 ~
teleport @s[scores={AnimationProgress=2}] ^ ^0.2 ^ ~40 ~
teleport @s[scores={AnimationProgress=3}] ^ ^0.3 ^ ~60 ~
teleport @s[scores={AnimationProgress=4}] ^ ^0.4 ^ ~80 ~
teleport @s[scores={AnimationProgress=5}] ^ ^0.5 ^ ~100 ~
teleport @s[scores={AnimationProgress=6}] ^ ^0.6 ^ ~120 ~
teleport @s[scores={AnimationProgress=7}] ^ ^0.7 ^ ~140 ~
teleport @s[scores={AnimationProgress=8}] ^ ^0.8 ^ ~160 ~
teleport @s[scores={AnimationProgress=9}] ^ ^0.9 ^ ~180 ~
teleport @s[scores={AnimationProgress=10}] ^ ^1 ^ ~200 ~
teleport @s[scores={AnimationProgress=11}] ^ ^1.1 ^ ~220 ~
teleport @s[scores={AnimationProgress=12}] ^ ^1.2 ^ ~240 ~
teleport @s[scores={AnimationProgress=13}] ^ ^1.3 ^ ~260 ~
teleport @s[scores={AnimationProgress=14}] ^ ^1.4 ^ ~280 ~
teleport @s[scores={AnimationProgress=15}] ^ ^1.5 ^ ~300 ~
teleport @s[scores={AnimationProgress=16}] ^ ^1.6 ^ ~320 ~
teleport @s[scores={AnimationProgress=17}] ^ ^1.7 ^ ~340 ~
teleport @s[scores={AnimationProgress=18}] ^ ^1.8 ^
teleport @s[scores={AnimationProgress=19}] ^ ^1.9 ^ ~20 ~
teleport @s[scores={AnimationProgress=20}] ^ ^2 ^ ~40 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=6..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0