$execute at @s[tag=pulled_left] run teleport @e[tag=temp,limit=1] ^$(scale_x) ^ ^
$execute at @s[tag=pulled_right] run teleport @e[tag=temp,limit=1] ^-$(scale_x) ^ ^
$execute at @s[tag=pulled_front] run teleport @e[tag=temp,limit=1] ^ ^ ^$(scale_z)
$execute at @s[tag=pulled_back] run teleport @e[tag=temp,limit=1] ^ ^ ^-$(scale_z)

execute store result score #temp EntityYOffset run data get entity @e[tag=temp,limit=1] Pos[0] 1000
execute store result storage luigis_mansion:data macro.facing_x double 0.001 run scoreboard players remove #temp EntityYOffset 1
execute store result score #temp EntityYOffset run data get entity @e[tag=temp,limit=1] Pos[1] 1000
execute store result storage luigis_mansion:data macro.facing_y double 0.001 run scoreboard players remove #temp EntityYOffset 501
execute store result score #temp EntityYOffset run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute store result storage luigis_mansion:data macro.facing_z double 0.001 run scoreboard players remove #temp EntityYOffset 1
scoreboard players reset #temp EntityYOffset