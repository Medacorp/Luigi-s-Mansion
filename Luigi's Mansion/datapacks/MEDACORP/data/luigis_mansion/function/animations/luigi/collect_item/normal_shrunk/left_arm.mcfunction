scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..6}] positioned ^-0.1825 ^-0.32 ^ rotated ~180 ~ positioned ^0.1825 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.1825 ^-0.32 ^ rotated ~135 ~-45 positioned ^0.1825 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.1825 ^ ^ rotated ~90 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.1825 ^ ^ rotated ~45 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=45..46}] positioned ^-0.1825 ^ ^ rotated ~45 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=47..63}] positioned ^-0.1825 ^ ^ rotated ~90 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=64..65}] positioned ^-0.1825 ^ ^ rotated ~45 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
scoreboard players remove @s[scores={AnimationProgress=7..9}] AnimationRotationX 300
scoreboard players add @s[scores={AnimationProgress=45..47}] AnimationRotationX 200
scoreboard players remove @s[scores={AnimationProgress=50..51}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=52..53}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=57..58}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=59..60}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=63..65}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0