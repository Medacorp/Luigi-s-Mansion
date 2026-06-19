teleport @s ^ ^0.1 ^
teleport @s[tag=!flipped_gravity] ^ ^1.55 ^
teleport @s[tag=flipped_gravity] ^ ^1.35 ^

scoreboard players operation @s MeltProgress = @e[tag=this_entity,tag=!model_piece,limit=1] MeltProgress

execute if score @s MeltProgress matches 1.. at @s run function luigis_mansion:animations/sir_weston/melt_ice
$execute at @s run function $(namespace):animations/sir_weston/$(id)/ice