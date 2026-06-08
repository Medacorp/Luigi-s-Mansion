scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^-0.375 ^-0.64 ^ rotated ~-180 ~ positioned ^0.375 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^-0.1825 ^-0.32 ^ rotated ~-180 ~ positioned ^0.1825 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^-0.375 ^0.64 ^ rotated ~-180 ~ positioned ^0.375 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^-0.1825 ^0.32 ^ rotated ~-180 ~ positioned ^0.1825 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^-0.375 ^-0.64 ^ rotated ~-135 ~-45 positioned ^0.375 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^-0.1825 ^-0.32 ^ rotated ~-135 ~-45 positioned ^0.1825 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^-0.375 ^0.64 ^ rotated ~-135 ~45 positioned ^0.375 ^ ^0.64 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^-0.1825 ^0.32 ^ rotated ~-135 ~45 positioned ^0.1825 ^ ^0.32 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] positioned ^-0.375 ^ ^ rotated ~-90 ~ positioned ^0.375 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] positioned ^-0.1825 ^ ^ rotated ~-90 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] positioned ^-0.375 ^ ^ rotated ~-45 ~ positioned ^0.375 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] positioned ^-0.1825 ^ ^ rotated ~-45 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=45..46}] positioned ^-0.375 ^ ^ rotated ~-45 ~ positioned ^0.375 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=45..46}] positioned ^-0.1825 ^ ^ rotated ~-45 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=47..63}] positioned ^-0.375 ^ ^ rotated ~-90 ~ positioned ^0.375 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=47..63}] positioned ^-0.1825 ^ ^ rotated ~-90 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=64..65}] positioned ^-0.375 ^ ^ rotated ~-45 ~ positioned ^0.375 ^ ^ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=64..65}] positioned ^-0.1825 ^ ^ rotated ~-45 ~ positioned ^0.1825 ^ ^ run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={AnimationProgress=1..60}] equipment.head set from storage luigis_mansion:data luigi.animation.item
data remove entity @s[scores={AnimationProgress=61}] equipment.head
execute store result score #item Time run data get storage luigis_mansion:data luigi.animation.item.components."minecraft:custom_data".held_pitch 10
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players operation @s AnimationRotationX += #item Time
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationX 900
execute if entity @s[scores={AnimationProgress=7..9}] run scoreboard players remove @s AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=45..47}] run scoreboard players add @s AnimationRotationX 400
execute if entity @s[scores={AnimationProgress=50..51}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=52..53}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=57..58}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=59..60}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=63..65}] run scoreboard players remove @s AnimationRotationX 100
scoreboard players operation #head Time = @s AnimationRotationX
scoreboard players operation #head Time -= #item Time
execute store result entity @s Rotation[1] float 0.1 run scoreboard players remove #head Time 900
scoreboard players reset #head Time
scoreboard players reset #item Time
execute at @s[tag=!shrunk,scores={AnimationProgress=..47}] positioned ^ ^-0.74 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,scores={AnimationProgress=..47}] positioned ^ ^-0.37 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!shrunk,scores={AnimationProgress=48..}] positioned ^ ^-0.4 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,scores={AnimationProgress=48..}] positioned ^ ^-0.2 ^ run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0