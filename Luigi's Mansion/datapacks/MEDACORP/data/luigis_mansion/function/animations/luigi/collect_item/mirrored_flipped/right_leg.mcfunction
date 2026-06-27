scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6}] positioned ^-0.125 ^ ^ rotated ~-180 ~ positioned ^0.125 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6}] positioned ^-0.0625 ^ ^ rotated ~-180 ~ positioned ^0.0625 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7}] positioned ^-0.125 ^ ^ rotated ~-135 ~ positioned ^0.125 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=7}] positioned ^-0.0625 ^ ^ rotated ~-135 ~ positioned ^0.0625 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] positioned ^-0.125 ^ ^ rotated ~-90 ~ positioned ^0.125 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] positioned ^-0.0625 ^ ^ rotated ~-90 ~ positioned ^0.0625 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] positioned ^-0.125 ^ ^ rotated ~-45 ~ positioned ^0.125 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] positioned ^-0.0625 ^ ^ rotated ~-45 ~ positioned ^0.0625 ^ ^ run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0