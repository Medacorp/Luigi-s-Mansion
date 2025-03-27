forceload add 749 -66 615 81
execute unless loaded 749 102 -66 run scoreboard players set #temp Time 1
execute unless loaded 615 102 81 run scoreboard players set #temp Time 1
execute if score #temp Time matches 1 run schedule function luigis_mansion:room/exterior/reset 1
execute unless score #temp Time matches 1 run function luigis_mansion:room/exterior/load/loaded/rank/clear_previous
execute unless score #temp Time matches 1 run forceload remove 749 -66 615 81
execute unless score #temp Time matches 1 run data remove storage luigis_mansion:data reset_exterior
scoreboard players reset #temp Time