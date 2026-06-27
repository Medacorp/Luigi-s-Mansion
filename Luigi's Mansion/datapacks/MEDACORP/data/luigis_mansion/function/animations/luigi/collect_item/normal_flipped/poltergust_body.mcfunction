scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..6}] positioned ^ ^0.04 ^0.125 rotated ~180 ~ positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^ ^0.04 ^0.125 rotated ~135 ~45 positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[scores={AnimationProgress=8}] positioned ^ ^ ^0.125 rotated ~90 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^ ^ ^0.125 rotated ~45 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=45..46}] positioned ^ ^ ^0.125 rotated ~22.5 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=47..63}] positioned ^ ^ ^0.125 rotated ~45 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=64..65}] positioned ^ ^ ^0.125 rotated ~22.5 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
scoreboard players add @s[scores={AnimationProgress=1}] AnimationRotationX 900
scoreboard players remove @s[scores={AnimationProgress=7..9}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0