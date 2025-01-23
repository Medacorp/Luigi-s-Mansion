scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=91}] ^ ^-0.1 ^0.3
teleport @s[scores={AnimationProgress=92}] ^ ^-0.2 ^0.6
teleport @s[scores={AnimationProgress=93}] ^ ^-0.3 ^0.9
teleport @s[scores={AnimationProgress=94}] ^ ^-0.4 ^1.2
teleport @s[scores={AnimationProgress=95}] ^ ^-0.5 ^1.5
teleport @s[scores={AnimationProgress=96}] ^ ^-0.6 ^1.8
teleport @s[scores={AnimationProgress=97}] ^ ^-0.7 ^2.1
teleport @s[scores={AnimationProgress=98}] ^ ^-0.8 ^2.4
teleport @s[scores={AnimationProgress=99}] ^ ^-0.9 ^2.7
teleport @s[scores={AnimationProgress=100..}] ^ ^-1 ^3
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time