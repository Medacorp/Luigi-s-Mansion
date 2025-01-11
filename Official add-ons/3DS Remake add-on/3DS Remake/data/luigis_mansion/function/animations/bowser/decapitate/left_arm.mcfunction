scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=21..22}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=23..24}] ^ ^ ^-0.1
teleport @s[scores={AnimationProgress=25..26}] ^ ^ ^-0.15
teleport @s[scores={AnimationProgress=27..28}] ^ ^ ^-0.2
teleport @s[scores={AnimationProgress=29..31}] ^ ^ ^-0.25
teleport @s[scores={AnimationProgress=32..33}] ^ ^ ^-0.2
teleport @s[scores={AnimationProgress=34..35}] ^ ^ ^-0.15
teleport @s[scores={AnimationProgress=36..37}] ^ ^ ^-0.1
teleport @s[scores={AnimationProgress=38..39}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=51}] ^ ^-0.1 ^0.05
teleport @s[scores={AnimationProgress=52}] ^ ^-0.2 ^0.1
teleport @s[scores={AnimationProgress=53}] ^ ^-0.3 ^0.15
teleport @s[scores={AnimationProgress=54}] ^ ^-0.4 ^0.2
teleport @s[scores={AnimationProgress=55}] ^ ^-0.5 ^0.25
teleport @s[scores={AnimationProgress=56}] ^ ^-0.6 ^0.3
teleport @s[scores={AnimationProgress=57}] ^ ^-0.7 ^0.35
teleport @s[scores={AnimationProgress=58}] ^ ^-0.8 ^0.4
teleport @s[scores={AnimationProgress=59}] ^ ^-0.9 ^0.45
teleport @s[scores={AnimationProgress=60}] ^ ^-1 ^0.5
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=41..50}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 14
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 14
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0