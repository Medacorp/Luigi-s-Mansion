scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.67 ^ rotated ~180 ~ positioned ^ ^ ^0.67 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=!flipped_gravity] positioned ^ ^-0.34 ^ rotated ~180 ~ positioned ^ ^ ^0.34 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.67 ^ rotated ~180 ~ positioned ^ ^ ^0.67 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=1..6},tag=flipped_gravity] positioned ^ ^0.34 ^ rotated ~180 ~ positioned ^ ^ ^0.34 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.67 ^ rotated ~135 ~-45 positioned ^ ^ ^0.67 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=!flipped_gravity] positioned ^ ^-0.34 ^ rotated ~135 ~-45 positioned ^ ^ ^0.34 run teleport @s ~ ~ ~ ~ ~45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.67 ^ rotated ~135 ~45 positioned ^ ^ ^0.67 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=shrunk,scores={AnimationProgress=7},tag=flipped_gravity] positioned ^ ^0.34 ^ rotated ~135 ~45 positioned ^ ^ ^0.34 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[tag=!shrunk,scores={AnimationProgress=8}] rotated ~90 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=8}] rotated ~90 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=9}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=9}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=45..46}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=45..46}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=47..49}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=47..49}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=50..52}] rotated ~60 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=50..52}] rotated ~60 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=53..56}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=53..56}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=57..59}] rotated ~50 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=57..59}] rotated ~50 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=60..63}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=60..63}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!shrunk,scores={AnimationProgress=64..65}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=shrunk,scores={AnimationProgress=64..65}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.happy
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationX 900
execute if entity @s[scores={AnimationProgress=7..9}] run scoreboard players remove @s AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=21..22}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=26..27}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=28..29}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=61..65}] run scoreboard players remove @s AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0