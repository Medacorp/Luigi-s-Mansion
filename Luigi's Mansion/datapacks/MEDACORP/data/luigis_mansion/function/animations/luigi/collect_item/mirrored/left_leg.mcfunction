scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6}] positioned ^-0.11 ^ ^ rotated ~-180 ~ positioned ^0.11 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6}] positioned ^-0.06 ^ ^ rotated ~-180 ~ positioned ^0.06 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7}] positioned ^-0.11 ^ ^ rotated ~-135 ~ positioned ^0.11 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=7}] positioned ^-0.06 ^ ^ rotated ~-135 ~ positioned ^0.06 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] positioned ^-0.11 ^ ^ rotated ~-90 ~ positioned ^0.11 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] positioned ^-0.06 ^ ^ rotated ~-90 ~ positioned ^0.06 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] positioned ^-0.11 ^ ^ rotated ~-45 ~ positioned ^0.11 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] positioned ^-0.06 ^ ^ rotated ~-45 ~ positioned ^0.06 ^ ^ run teleport @s ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0