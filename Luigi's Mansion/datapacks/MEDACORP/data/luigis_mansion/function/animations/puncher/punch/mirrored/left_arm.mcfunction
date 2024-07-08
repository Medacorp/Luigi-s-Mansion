scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.3 ^ ^ rotated ~36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.3 ^ ^ rotated ~72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.3 ^ ^ rotated ~108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.3 ^ ^ rotated ~144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.3 ^ ^ rotated ~180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.3 ^ ^ rotated ~216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.3 ^ ^ rotated ~252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.3 ^ ^ rotated ~288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.3 ^ ^ rotated ~324 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^-0.3 ^ ^ rotated ~36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^-0.3 ^ ^ rotated ~72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^-0.3 ^ ^ rotated ~108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^-0.3 ^ ^ rotated ~144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^-0.3 ^ ^ rotated ~180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^-0.3 ^ ^ rotated ~216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^-0.3 ^ ^ rotated ~252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^-0.3 ^ ^ rotated ~288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^-0.3 ^ ^ rotated ~324 ~ run teleport @s ^0.3 ^ ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-160.0f,-70.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 12
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0