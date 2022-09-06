execute unless score #cold_storage_barrel_2 Search matches 1 run scoreboard players reset #cold_storage_barrel_2 Searching
scoreboard players reset #cold_storage_barrel_2 Search
execute if score #cold_storage_barrel_2 Searching matches 20 run function luigis_mansion:room/hidden/cold_storage/search/boo_check/barrel_2
scoreboard players operation #temp Searching = #cold_storage_barrel_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 726 2 19 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching