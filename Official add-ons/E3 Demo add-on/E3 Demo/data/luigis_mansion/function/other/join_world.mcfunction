execute in minecraft:overworld run teleport @s 858 90 -38 0 0
attribute @s minecraft:max_health base set 100
attribute @s minecraft:jump_strength base set 0
effect give @s minecraft:instant_health 1 19 true
gamemode adventure @s
title @s times 40 40 40
tag @s add joined
tag @s add play_opening
tag @s add stop_map_on_key_collect
function luigis_mansion:entities/player/memory/color/save
function luigis_mansion:other/log_on