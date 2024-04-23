scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^-0.46 ^ ^ rotated ~-10 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^-0.46 ^ ^ rotated ~-20 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^-0.46 ^ ^ rotated ~-30 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^-0.46 ^ ^ rotated ~-40 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^-0.46 ^ ^ rotated ~-50 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^-0.46 ^ ^ rotated ~-60 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^-0.46 ^ ^ rotated ~-70 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^-0.46 ^ ^ rotated ~-80 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^-0.46 ^ ^ rotated ~-90 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=10}] positioned ^-0.46 ^ ^ rotated ~-100 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^-0.46 ^ ^ rotated ~-110 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^-0.46 ^ ^ rotated ~-120 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^-0.46 ^ ^ rotated ~-130 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^-0.46 ^ ^ rotated ~-140 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=15..25}] positioned ^-0.46 ^ ^ rotated ~-150 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^-0.46 ^ ^ rotated ~-140 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^-0.46 ^ ^ rotated ~-130 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^-0.46 ^ ^ rotated ~-120 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^-0.46 ^ ^ rotated ~-110 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=30}] positioned ^-0.46 ^ ^ rotated ~-100 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=31}] positioned ^-0.46 ^ ^ rotated ~-90 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=32}] positioned ^-0.46 ^ ^ rotated ~-80 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=33}] positioned ^-0.46 ^ ^ rotated ~-70 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=34}] positioned ^-0.46 ^ ^ rotated ~-60 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=35}] positioned ^-0.46 ^ ^ rotated ~-50 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=36}] positioned ^-0.46 ^ ^ rotated ~-40 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=37}] positioned ^-0.46 ^ ^ rotated ~-30 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=38}] positioned ^-0.46 ^ ^ rotated ~-20 ~ run teleport @s ^0.46 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=39}] positioned ^-0.46 ^ ^ rotated ~-10 ~ run teleport @s ^0.46 ^ ^ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-70.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=34..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0