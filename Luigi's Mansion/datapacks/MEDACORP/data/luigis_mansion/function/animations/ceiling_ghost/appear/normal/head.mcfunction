scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^4.5 ^0.56
teleport @s[scores={AnimationProgress=2}] ^ ^4.2 ^0.56
teleport @s[scores={AnimationProgress=3}] ^ ^3.9 ^0.56
teleport @s[scores={AnimationProgress=4}] ^ ^3.6 ^0.56
teleport @s[scores={AnimationProgress=5}] ^ ^3.3 ^0.56
teleport @s[scores={AnimationProgress=6}] ^ ^3 ^0.56
teleport @s[scores={AnimationProgress=7}] ^ ^2.7 ^0.56
teleport @s[scores={AnimationProgress=8}] ^ ^2.4 ^0.56
teleport @s[scores={AnimationProgress=9}] ^ ^2.1 ^0.56
teleport @s[scores={AnimationProgress=10}] ^ ^1.8 ^0.56
teleport @s[scores={AnimationProgress=11}] ^ ^1.5 ^0.56
teleport @s[scores={AnimationProgress=12}] ^ ^1.2 ^0.56
teleport @s[scores={AnimationProgress=13}] ^ ^0.9 ^0.42
teleport @s[scores={AnimationProgress=14}] ^ ^0.6 ^0.28
teleport @s[scores={AnimationProgress=15}] ^ ^0.3 ^0.14
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 11
execute if entity @s[scores={AnimationProgress=8..17}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0