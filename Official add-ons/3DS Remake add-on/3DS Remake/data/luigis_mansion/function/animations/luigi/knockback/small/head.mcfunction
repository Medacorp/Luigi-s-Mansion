scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},tag=!shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=2},tag=!shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=3},tag=!shrunk] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=4},tag=!shrunk] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=5},tag=!shrunk] ^ ^ ^0.25 ~ ~
teleport @s[scores={AnimationProgress=6},tag=!shrunk] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=7},tag=!shrunk] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=8},tag=!shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=9},tag=!shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=1},tag=shrunk] ^ ^ ^0.025 ~ ~
teleport @s[scores={AnimationProgress=2},tag=shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=3},tag=shrunk] ^ ^ ^0.075 ~ ~
teleport @s[scores={AnimationProgress=4},tag=shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=5},tag=shrunk] ^ ^ ^0.125 ~ ~
teleport @s[scores={AnimationProgress=6},tag=shrunk] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=7},tag=shrunk] ^ ^ ^0.075 ~ ~
teleport @s[scores={AnimationProgress=8},tag=shrunk] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=9},tag=shrunk] ^ ^ ^0.025 ~ ~
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
execute if entity @s[tag=!gooigi_model] run function luigis_mansion:animations/luigi/sync_head
execute if entity @s[tag=gooigi_model] run function 3ds_remake:animations/gooigi/sync_head
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0