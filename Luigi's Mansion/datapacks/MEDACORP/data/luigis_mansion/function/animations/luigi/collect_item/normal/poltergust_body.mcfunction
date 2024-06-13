scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.04 ^0.125 rotated ~180 ~ positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.2 ^0.065 rotated ~180 ~ positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.04 ^0.125 rotated ~180 ~ positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.2 ^0.065 rotated ~180 ~ positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.04 ^0.125 rotated ~135 ~-45 positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.2 ^0.065 rotated ~135 ~-45 positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.04 ^0.125 rotated ~135 ~45 positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.2 ^0.065 rotated ~135 ~45 positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] positioned ^ ^ ^0.125 rotated ~90 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] positioned ^ ^ ^0.065 rotated ~90 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] positioned ^ ^ ^0.125 rotated ~45 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] positioned ^ ^ ^0.065 rotated ~45 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=45..46}] positioned ^ ^ ^0.125 rotated ~22.5 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=45..46}] positioned ^ ^ ^0.065 rotated ~22.5 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=47..63}] positioned ^ ^ ^0.125 rotated ~45 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=47..63}] positioned ^ ^ ^0.065 rotated ~45 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=64..65}] positioned ^ ^ ^0.125 rotated ~22.5 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=64..65}] positioned ^ ^ ^0.065 rotated ~22.5 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 90
execute if entity @s[scores={AnimationProgress=7..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 30
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0