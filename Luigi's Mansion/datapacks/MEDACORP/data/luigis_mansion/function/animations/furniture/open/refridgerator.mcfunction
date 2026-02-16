execute if entity @s[scores={ActionTime=-3},tag=left_swing] run fill ^2 ^ ^1.25 ^2 ^3 ^1.25 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={ActionTime=-3},tag=left_swing] run fill ^1.5 ^ ^0.5 ^1.5 ^3 ^0.5 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={ActionTime=-3},tag=!left_swing] run fill ^-2 ^ ^1.25 ^-2 ^3 ^1.25 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={ActionTime=-3},tag=!left_swing] run fill ^-1.5 ^ ^0.5 ^-1.5 ^3 ^0.5 minecraft:air replace minecraft:light_gray_stained_glass
scoreboard players add @s ActionTime 1
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..10}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=11..15}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={ActionTime=16..18}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=19}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={ActionTime=20}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute if entity @s[scores={ActionTime=1..10}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"swinging_door"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if entity @s[scores={ActionTime=1}] positioned ^ ^ ^1 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=2},tag=left_swing] positioned ^0.17 ^ ^1.17 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=3},tag=left_swing] positioned ^0.33 ^ ^1.33 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=4},tag=left_swing] positioned ^0.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=5},tag=left_swing] positioned ^0.67 ^ ^1.67 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=6},tag=left_swing] positioned ^0.83 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=7},tag=left_swing] positioned ^1 ^ ^2 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=7},tag=left_swing] run fill ^2 ^ ^1.25 ^2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=7},tag=left_swing] run fill ^2 ^ ^1.25 ^2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=7},tag=left_swing] run fill ^1.5 ^ ^0.5 ^1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=7},tag=left_swing] run fill ^1.5 ^ ^0.5 ^1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=8},tag=left_swing] positioned ^1.17 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=9},tag=left_swing] positioned ^1.33 ^ ^1.67 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=10},tag=left_swing] positioned ^1.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=2},tag=!left_swing] positioned ^-0.17 ^ ^1.17 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=3},tag=!left_swing] positioned ^-0.33 ^ ^1.33 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=4},tag=!left_swing] positioned ^-0.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=5},tag=!left_swing] positioned ^-0.67 ^ ^1.67 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=6},tag=!left_swing] positioned ^-0.83 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=7},tag=!left_swing] positioned ^-1 ^ ^2 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=7},tag=!left_swing] run fill ^-2 ^ ^1.25 ^-2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=7},tag=!left_swing] run fill ^-2 ^ ^1.25 ^-2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=7},tag=!left_swing] run fill ^-1.5 ^ ^0.5 ^-1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=7},tag=!left_swing] run fill ^-1.5 ^ ^0.5 ^-1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=8},tag=!left_swing] positioned ^-1.17 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=9},tag=!left_swing] positioned ^-1.33 ^ ^1.67 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=10},tag=!left_swing] positioned ^-1.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=1..10}] run data remove storage luigis_mansion:data damage
scoreboard players set @s[scores={ActionTime=20}] ActionTime -2