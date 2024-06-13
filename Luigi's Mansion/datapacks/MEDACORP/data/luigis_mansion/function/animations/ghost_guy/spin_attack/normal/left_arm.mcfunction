scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=21}] positioned ^-0.3 ^ ^ rotated ~-36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=22}] positioned ^-0.3 ^ ^ rotated ~-72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=23}] positioned ^-0.3 ^ ^ rotated ~-108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=24}] positioned ^-0.3 ^ ^ rotated ~-144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=25}] positioned ^-0.3 ^ ^ rotated ~-180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^-0.3 ^ ^ rotated ~-216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^-0.3 ^ ^ rotated ~-252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^-0.3 ^ ^ rotated ~-288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^-0.3 ^ ^ rotated ~-324 ~ run teleport @s ^0.3 ^ ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-90.0f,0.0f]}}
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0