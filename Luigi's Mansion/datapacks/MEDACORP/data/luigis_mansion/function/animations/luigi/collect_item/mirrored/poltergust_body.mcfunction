scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.04 ^0.125 rotated ~-180 ~ positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.2 ^0.065 rotated ~-180 ~ positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.04 ^0.125 rotated ~-180 ~ positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.2 ^0.065 rotated ~-180 ~ positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.04 ^0.125 rotated ~-135 ~-45 positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.2 ^0.065 rotated ~-135 ~-45 positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.04 ^0.125 rotated ~-135 ~45 positioned ^ ^0.125 ^0.04 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.2 ^0.065 rotated ~-135 ~45 positioned ^ ^0.065 ^0.2 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] positioned ^ ^ ^0.125 rotated ~-90 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] positioned ^ ^ ^0.065 rotated ~-90 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] positioned ^ ^ ^0.125 rotated ~-45 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] positioned ^ ^ ^0.065 rotated ~-45 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=45..46}] positioned ^ ^ ^0.125 rotated ~-22.5 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=45..46}] positioned ^ ^ ^0.065 rotated ~-22.5 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=47..63}] positioned ^ ^ ^0.125 rotated ~-45 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=47..63}] positioned ^ ^ ^0.065 rotated ~-45 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=64..65}] positioned ^ ^ ^0.125 rotated ~-22.5 ~ positioned ^ ^ ^-0.125 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=64..65}] positioned ^ ^ ^0.065 rotated ~-22.5 ~ positioned ^ ^ ^-0.065 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationX 900
execute if entity @s[scores={AnimationProgress=7..9}] run scoreboard players remove @s AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0