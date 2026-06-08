scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=21}] positioned ^-0.3 ^ ^ rotated ~36 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=22}] positioned ^-0.3 ^ ^ rotated ~72 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=23}] positioned ^-0.3 ^ ^ rotated ~108 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=24}] positioned ^-0.3 ^ ^ rotated ~144 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=25}] positioned ^-0.3 ^ ^ rotated ~180 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^-0.3 ^ ^ rotated ~216 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^-0.3 ^ ^ rotated ~252 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^-0.3 ^ ^ rotated ~288 ~ run teleport @s ^0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^-0.3 ^ ^ rotated ~324 ~ run teleport @s ^0.3 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=25..30}] run scoreboard players add @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationY 180
execute if entity @s[scores={AnimationProgress=20..30}] run scoreboard players add @s AnimationRotationY 180
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0