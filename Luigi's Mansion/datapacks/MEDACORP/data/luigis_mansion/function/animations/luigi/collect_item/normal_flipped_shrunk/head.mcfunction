scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..6}] positioned ^ ^0.34 ^ rotated ~180 ~ positioned ^ ^ ^0.34 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^ ^0.34 ^ rotated ~135 ~45 positioned ^ ^ ^0.34 run teleport @s ~ ~ ~ ~ ~-45
execute if entity @s[scores={AnimationProgress=8}] rotated ~90 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=9}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=45..46}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=47..49}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=50..52}] rotated ~60 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=53..56}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=57..59}] rotated ~50 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=60..63}] rotated ~45 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={AnimationProgress=64..65}] rotated ~22.5 ~ run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.happy
scoreboard players add @s[scores={AnimationProgress=1}] AnimationRotationX 900
scoreboard players remove @s[scores={AnimationProgress=7..9}] AnimationRotationX 300
scoreboard players add @s[scores={AnimationProgress=21..22}] AnimationRotationX 50
scoreboard players remove @s[scores={AnimationProgress=23..24}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=26..27}] AnimationRotationX 50
scoreboard players remove @s[scores={AnimationProgress=28..29}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=46..50}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=61..65}] AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=70}] AnimationProgress 0