teleport @s ^ ^0.1 ^

scoreboard players operation @s MeltProgress = @e[tag=this_entity,limit=1] MeltProgress

execute if score @s MeltProgress matches 1.. at @s run function luigis_mansion:animations/sir_weston/melt_ice
$execute at @s run function $(namespace):animations/sir_weston/$(id)/ice