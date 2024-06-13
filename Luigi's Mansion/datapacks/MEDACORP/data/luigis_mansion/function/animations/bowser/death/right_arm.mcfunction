scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=51}] ^ ^-0.3 ^0.5
teleport @s[scores={AnimationProgress=52}] ^ ^-0.6 ^1
teleport @s[scores={AnimationProgress=53}] ^ ^-0.9 ^1.5
teleport @s[scores={AnimationProgress=54}] ^ ^-1.2 ^2
teleport @s[scores={AnimationProgress=55}] ^ ^-1.5 ^2.5
teleport @s[scores={AnimationProgress=56}] ^ ^-1.8 ^3
teleport @s[scores={AnimationProgress=57}] ^ ^-2.1 ^3.5
teleport @s[scores={AnimationProgress=58}] ^ ^-2.4 ^4
teleport @s[scores={AnimationProgress=59}] ^ ^-2.7 ^4.5
teleport @s[scores={AnimationProgress=60..}] ^ ^-3 ^5.5
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @s {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 14
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 14
scoreboard players reset #temp Time