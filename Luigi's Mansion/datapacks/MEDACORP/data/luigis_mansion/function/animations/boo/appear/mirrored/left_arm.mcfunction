scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-90.0f,0.0f]}}
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.3 ^ ^ rotated ~-36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.3 ^ ^ rotated ~-72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.3 ^ ^ rotated ~-108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.3 ^ ^ rotated ~-144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.3 ^ ^ rotated ~-180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.3 ^ ^ rotated ~-216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.3 ^ ^ rotated ~-252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.3 ^ ^ rotated ~-288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.3 ^ ^ rotated ~-342 ~ run teleport @s ^0.3 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
data modify entity @s Pose.Head[1] set from entity @e[tag=this_entity,limit=1] Rotation[1]