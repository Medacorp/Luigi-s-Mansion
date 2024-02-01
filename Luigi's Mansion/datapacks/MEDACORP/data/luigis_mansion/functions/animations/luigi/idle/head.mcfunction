scoreboard players add @s Time 1
data modify entity @s[scores={Time=1}] Pose.Head[2] set value 0.001f
data modify entity @s[scores={Time=1},tag=flipped_gravity] Pose.Head[2] set value -180.0f
execute store result score #temp Time run data get entity @s Pose.Head[2] 4
execute if entity @s[scores={Time=40},tag=dark_room] run function luigis_mansion:animations/luigi/idle/head_dark_room
scoreboard players set @s[scores={Time=40}] Time 0