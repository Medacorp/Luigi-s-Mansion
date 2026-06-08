scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.64 ^ rotated ~180 ~ positioned ^ ^ ^0.64 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.32 ^ rotated ~180 ~ positioned ^ ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.64 ^ rotated ~180 ~ positioned ^ ^ ^0.64 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.32 ^ rotated ~180 ~ positioned ^ ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.64 ^ rotated ~135 ~-45 positioned ^ ^ ^0.64 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.32 ^ rotated ~135 ~-45 positioned ^ ^ ^0.32 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.64 ^ rotated ~135 ~45 positioned ^ ^ ^0.64 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.32 ^ rotated ~135 ~45 positioned ^ ^ ^0.32 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] rotated ~90 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] rotated ~90 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=45..46}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=45..46}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=47..63}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=47..63}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=64..65}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=64..65}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationX 900
execute if entity @s[scores={AnimationProgress=7..9}] run scoreboard players remove @s AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0