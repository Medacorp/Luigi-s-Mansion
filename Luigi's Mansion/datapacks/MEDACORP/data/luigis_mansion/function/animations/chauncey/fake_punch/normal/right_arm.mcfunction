scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^0.3 ^ ^ rotated ~-36 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^0.3 ^ ^ rotated ~-72 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^0.3 ^ ^ rotated ~-108 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^0.3 ^ ^ rotated ~-144 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^0.3 ^ ^ rotated ~-180 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^0.3 ^ ^ rotated ~-216 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^0.3 ^ ^ rotated ~-252 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^0.3 ^ ^ rotated ~-288 ~ run teleport @s ^-0.3 ^ ^ ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^0.3 ^ ^ rotated ~-324 ~ run teleport @s ^-0.3 ^ ^ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1600
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 700
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 120
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
execute unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment