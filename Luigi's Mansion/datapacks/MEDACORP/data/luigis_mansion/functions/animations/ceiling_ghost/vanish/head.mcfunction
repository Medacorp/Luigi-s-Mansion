scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5}] ^ ^0.3 ^0.14
teleport @s[scores={AnimationProgress=6}] ^ ^0.6 ^0.28
teleport @s[scores={AnimationProgress=7}] ^ ^0.9 ^0.42
teleport @s[scores={AnimationProgress=8}] ^ ^1.2 ^0.56
teleport @s[scores={AnimationProgress=9}] ^ ^1.5 ^0.7
teleport @s[scores={AnimationProgress=10}] ^ ^1.8 ^0.84
teleport @s[scores={AnimationProgress=11}] ^ ^2.1 ^0.98
teleport @s[scores={AnimationProgress=12}] ^ ^2.4 ^1.12
teleport @s[scores={AnimationProgress=13}] ^ ^2.7 ^1.26
teleport @s[scores={AnimationProgress=14}] ^ ^3 ^1.4
teleport @s[scores={AnimationProgress=15}] ^ ^3.3 ^1.54
teleport @s[scores={AnimationProgress=16}] ^ ^3.6 ^1.68
teleport @s[scores={AnimationProgress=17}] ^ ^3.9 ^1.82
teleport @s[scores={AnimationProgress=18}] ^ ^4.2 ^1.96
teleport @s[scores={AnimationProgress=19}] ^ ^4.5 ^2.1
teleport @s[scores={AnimationProgress=20}] ^ ^4.8 ^2.24
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=8..17}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 11
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0