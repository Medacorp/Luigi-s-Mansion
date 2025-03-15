scoreboard players add @s Time 1
data modify entity @s[scores={Time=1}] Pose.Head[2] set value 0.001f
data modify entity @s[scores={Time=1},tag=flipped_gravity] Pose.Head[2] set value -180.0f
execute if entity @s[tag=dark_room] run function luigis_mansion:animations/luigi/idle/head_dark_room
data modify entity @s[tag=!low_health,tag=!poltergust_grabbed,tag=!dark_room] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute unless entity @s[tag=!low_health,tag=!poltergust_grabbed,tag=!dark_room] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={Time=40}] Time 0