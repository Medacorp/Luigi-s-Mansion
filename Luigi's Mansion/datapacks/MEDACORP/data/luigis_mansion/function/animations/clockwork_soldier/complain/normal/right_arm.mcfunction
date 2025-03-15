scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.46 ^ ^ rotated ~18 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.46 ^ ^ rotated ~36 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.46 ^ ^ rotated ~54 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.46 ^ ^ rotated ~72 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.46 ^ ^ rotated ~90 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.46 ^ ^ rotated ~108 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.46 ^ ^ rotated ~126 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.46 ^ ^ rotated ~144 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.46 ^ ^ rotated ~162 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^0.46 ^ ^ rotated ~180 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^0.46 ^ ^ rotated ~198 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^0.46 ^ ^ rotated ~216 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^0.46 ^ ^ rotated ~234 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^0.46 ^ ^ rotated ~252 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^0.46 ^ ^ rotated ~270 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^0.46 ^ ^ rotated ~288 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^0.46 ^ ^ rotated ~306 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^0.46 ^ ^ rotated ~324 ~ run teleport @s ^-0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^0.46 ^ ^ rotated ~342 ~ run teleport @s ^-0.46 ^ ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-160.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 28
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 28
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 28
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 28
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..7}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 20
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 20
execute if entity @s[scores={AnimationProgress=16..17}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 20
execute if entity @s[scores={AnimationProgress=19..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 20
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0