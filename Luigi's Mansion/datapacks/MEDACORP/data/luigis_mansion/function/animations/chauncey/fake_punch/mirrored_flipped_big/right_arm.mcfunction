scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.5 ^ ^ rotated ~36 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.5 ^ ^ rotated ~72 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.5 ^ ^ rotated ~108 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.5 ^ ^ rotated ~144 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.5 ^ ^ rotated ~180 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.5 ^ ^ rotated ~216 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.5 ^ ^ rotated ~252 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.5 ^ ^ rotated ~288 ~ run teleport @s ^0.5 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.5 ^ ^ rotated ~324 ~ run teleport @s ^0.5 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0