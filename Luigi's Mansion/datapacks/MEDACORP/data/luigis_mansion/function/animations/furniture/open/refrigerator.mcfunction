execute if entity @s[scores={ActionTime=-3},tag=left_swing] run fill ^2 ^ ^1.25 ^2 ^3 ^1.25 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={ActionTime=-3},tag=left_swing] run fill ^1.5 ^ ^0.5 ^1.5 ^3 ^0.5 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={ActionTime=-3},tag=!left_swing] run fill ^-2 ^ ^1.25 ^-2 ^3 ^1.25 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={ActionTime=-3},tag=!left_swing] run fill ^-1.5 ^ ^0.5 ^-1.5 ^3 ^0.5 minecraft:air replace minecraft:light_gray_stained_glass
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.refrigerator block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..5}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=6..7}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=8..9}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=10..11}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=12}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=1..5}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"swinging_door"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if entity @s[scores={ActionTime=1},tag=left_swing] positioned ^0.17 ^ ^1.17 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=2},tag=left_swing] positioned ^0.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=3},tag=left_swing] positioned ^0.83 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=4},tag=left_swing] positioned ^1 ^ ^2 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=4},tag=left_swing] run fill ^2 ^ ^1.25 ^2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=4},tag=left_swing] run fill ^2 ^ ^1.25 ^2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=4},tag=left_swing] run fill ^1.5 ^ ^0.5 ^1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=4},tag=left_swing] run fill ^1.5 ^ ^0.5 ^1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=4},tag=left_swing] positioned ^1.17 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=5},tag=left_swing] positioned ^1.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=1},tag=!left_swing] positioned ^-0.17 ^ ^1.17 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=2},tag=!left_swing] positioned ^-0.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=3},tag=!left_swing] positioned ^-0.83 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=4},tag=!left_swing] run fill ^-2 ^ ^1.25 ^-2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=4},tag=!left_swing] run fill ^-2 ^ ^1.25 ^-2 ^3 ^1.25 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=4},tag=!left_swing] run fill ^-1.5 ^ ^0.5 ^-1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:air
execute if entity @s[scores={ActionTime=4},tag=!left_swing] run fill ^-1.5 ^ ^0.5 ^-1.5 ^3 ^0.5 minecraft:light_gray_stained_glass replace minecraft:light
execute if entity @s[scores={ActionTime=4},tag=!left_swing] positioned ^-1.17 ^ ^1.83 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=5},tag=!left_swing] positioned ^-1.5 ^ ^1.5 as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=1..5}] run data remove storage luigis_mansion:data damage
scoreboard players set @s[scores={ActionTime=15}] ActionTime -2