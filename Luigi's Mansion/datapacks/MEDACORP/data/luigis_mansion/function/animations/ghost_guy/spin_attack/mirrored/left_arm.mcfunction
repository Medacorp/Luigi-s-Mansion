scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=21}] positioned ^-0.3 ^ ^ rotated ~36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=22}] positioned ^-0.3 ^ ^ rotated ~72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=23}] positioned ^-0.3 ^ ^ rotated ~108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=24}] positioned ^-0.3 ^ ^ rotated ~144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=25}] positioned ^-0.3 ^ ^ rotated ~180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=26}] positioned ^-0.3 ^ ^ rotated ~216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=27}] positioned ^-0.3 ^ ^ rotated ~252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=28}] positioned ^-0.3 ^ ^ rotated ~288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=29}] positioned ^-0.3 ^ ^ rotated ~324 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=21}] positioned ^0.3 ^ ^ rotated ~36 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=22}] positioned ^0.3 ^ ^ rotated ~72 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=23}] positioned ^0.3 ^ ^ rotated ~108 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=24}] positioned ^0.3 ^ ^ rotated ~144 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=25}] positioned ^0.3 ^ ^ rotated ~180 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=26}] positioned ^0.3 ^ ^ rotated ~216 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=27}] positioned ^0.3 ^ ^ rotated ~252 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=28}] positioned ^0.3 ^ ^ rotated ~288 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=29}] positioned ^0.3 ^ ^ rotated ~324 ~ run teleport @s ^-0.3 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=25..30}] AnimationRotationX 180
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 180
scoreboard players add @s[scores={AnimationProgress=20..30}] AnimationRotationY 180
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0