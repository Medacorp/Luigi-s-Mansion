teleport @s[tag=!flipped_gravity] ^0.3 ^1.45 ^
teleport @s[tag=flipped_gravity] ^-0.3 ^1.35 ^

data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [6.4f,6.4f,6.4f]
execute if data storage luigis_mansion:data ghost{size:1} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [1.0f,1.0f,1.0f]
execute if data storage luigis_mansion:data ghost{size:2} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [1.94288f,1.94288f,1.94288f]
execute if data storage luigis_mansion:data ghost{size:3} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [2.28576f,2.28576f,2.28576f]
execute if data storage luigis_mansion:data ghost{size:4} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [2.62864f,2.62864f,2.62864f]
execute if data storage luigis_mansion:data ghost{size:5} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [2.97136f,2.97136f,2.97136f]
execute if data storage luigis_mansion:data ghost{size:6} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [3.31424f,3.31424f,3.31424f]
execute if data storage luigis_mansion:data ghost{size:7} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [3.65712f,3.65712f,3.65712f]
execute if data storage luigis_mansion:data ghost{size:8} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [4.0f,4.0f,4.0f]
execute if data storage luigis_mansion:data ghost{size:9} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [4.34288f,4.34288f,4.34288f]
execute if data storage luigis_mansion:data ghost{size:10} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [4.68576f,4.68576f,4.68576f]
execute if data storage luigis_mansion:data ghost{size:11} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [5.02864f,5.02864f,5.02864f]
execute if data storage luigis_mansion:data ghost{size:12} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [5.37136f,5.37136f,5.37136f]
execute if data storage luigis_mansion:data ghost{size:13} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [5.71424f,5.71424f,5.71424f]
execute if data storage luigis_mansion:data ghost{size:14} run data modify entity @s[scores={AnimationProgress=0}] transformation.scale set value [6.05712f,6.05712f,6.05712f]

$execute at @s run function $(namespace):animations/boo/$(id)/left_arm