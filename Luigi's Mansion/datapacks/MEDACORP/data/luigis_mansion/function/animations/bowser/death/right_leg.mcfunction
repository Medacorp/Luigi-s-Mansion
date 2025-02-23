scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=91}] ^ ^-0.133 ^0.4
teleport @s[scores={AnimationProgress=92}] ^ ^-0.267 ^0.8
teleport @s[scores={AnimationProgress=93}] ^ ^-0.4 ^1.2
teleport @s[scores={AnimationProgress=94}] ^ ^-0.533 ^1.6
teleport @s[scores={AnimationProgress=95}] ^ ^-0.667 ^2
teleport @s[scores={AnimationProgress=96}] ^ ^-0.8 ^2.4
teleport @s[scores={AnimationProgress=97}] ^ ^-0.933 ^2.8
teleport @s[scores={AnimationProgress=98}] ^ ^-1.067 ^3.2
teleport @s[scores={AnimationProgress=99}] ^ ^-1.2 ^3.6
teleport @s[scores={AnimationProgress=100..}] ^ ^-1.333 ^4.667
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=91..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time