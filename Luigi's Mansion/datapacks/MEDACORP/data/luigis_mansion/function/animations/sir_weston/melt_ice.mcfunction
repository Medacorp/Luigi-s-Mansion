teleport @s ~ ~-0.005 ~
scoreboard players remove @s MeltProgress 1
execute if score @s MeltProgress matches 1.. at @s run function luigis_mansion:animations/sir_weston/melt_ice