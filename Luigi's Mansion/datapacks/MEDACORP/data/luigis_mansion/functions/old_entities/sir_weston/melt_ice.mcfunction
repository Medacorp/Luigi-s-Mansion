teleport @s ~ ~-0.005 ~
scoreboard players remove #temp Time 1
execute unless score #temp Time matches 0 at @s run function luigis_mansion:old_entities/sir_weston/melt_ice
