scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=21}] positioned ^0.3 ^ ^ rotated ~-36 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=22}] positioned ^0.3 ^ ^ rotated ~-72 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=23}] positioned ^0.3 ^ ^ rotated ~-108 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=24}] positioned ^0.3 ^ ^ rotated ~-144 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=25}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^0.3 ^ ^ rotated ~-216 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^0.3 ^ ^ rotated ~-252 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^0.3 ^ ^ rotated ~-288 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^0.3 ^ ^ rotated ~-324 ~ run teleport @s ^-0.3 ^ ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,90.0f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[scores={AnimationProgress=25..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 18
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProgress=20..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0