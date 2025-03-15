scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^-0.35 ^-0.64 ^ rotated ~-180 ~ positioned ^0.35 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^-0.18 ^-0.32 ^ rotated ~-180 ~ positioned ^0.18 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^-0.35 ^0.64 ^ rotated ~-180 ~ positioned ^0.35 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^-0.18 ^0.32 ^ rotated ~-180 ~ positioned ^0.18 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^-0.35 ^-0.64 ^ rotated ~-135 ~-45 positioned ^0.35 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^-0.18 ^-0.32 ^ rotated ~-135 ~-45 positioned ^0.18 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^-0.35 ^0.64 ^ rotated ~-135 ~45 positioned ^0.35 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^-0.18 ^0.32 ^ rotated ~-135 ~45 positioned ^0.18 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] positioned ^-0.35 ^ ^ rotated ~-90 ~ positioned ^0.35 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] positioned ^-0.18 ^ ^ rotated ~-90 ~ positioned ^0.18 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] positioned ^-0.35 ^ ^ rotated ~-45 ~ positioned ^0.35 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] positioned ^-0.18 ^ ^ rotated ~-45 ~ positioned ^0.18 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=45..46}] positioned ^-0.35 ^ ^ rotated ~-45 ~ positioned ^0.35 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=45..46}] positioned ^-0.18 ^ ^ rotated ~-45 ~ positioned ^0.18 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=47..63}] positioned ^-0.35 ^ ^ rotated ~-90 ~ positioned ^0.35 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=47..63}] positioned ^-0.18 ^ ^ rotated ~-90 ~ positioned ^0.18 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=64..65}] positioned ^-0.35 ^ ^ rotated ~-45 ~ positioned ^0.35 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=64..65}] positioned ^-0.18 ^ ^ rotated ~-45 ~ positioned ^0.18 ^ ^ run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={AnimationProgress=1..60}] equipment.head set from storage luigis_mansion:data luigi.animation.item
data modify entity @s[scores={AnimationProgress=61}] equipment.head set value {}
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp2 Time run data get storage luigis_mansion:data luigi.animation.item.components."minecraft:custom_data".held_pitch
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players operation #temp Time += #temp2 Time
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 90
execute if entity @s[scores={AnimationProgress=7..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 30
execute if entity @s[scores={AnimationProgress=45..47}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 40
execute if entity @s[scores={AnimationProgress=50..51}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=52..53}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=57..58}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=59..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=63..65}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
scoreboard players operation #temp Time -= #temp2 Time
execute store result entity @s Rotation[1] float 1 run scoreboard players remove #temp Time 90
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute at @s[tag=!shrunk,scores={AnimationProgress=..47}] positioned ^ ^-0.74 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,scores={AnimationProgress=..47}] positioned ^ ^-0.37 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!shrunk,scores={AnimationProgress=48..}] positioned ^ ^-0.4 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,scores={AnimationProgress=48..}] positioned ^ ^-0.2 ^ run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0