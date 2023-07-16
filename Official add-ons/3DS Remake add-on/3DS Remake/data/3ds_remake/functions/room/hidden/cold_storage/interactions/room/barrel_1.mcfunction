execute unless score #cold_storage_barrel_1 Search matches 1 run scoreboard players reset #cold_storage_barrel_1 Searching
scoreboard players reset #cold_storage_barrel_1 Search
execute if score #cold_storage_barrel_1 Searching matches 20 run function 3ds_remake:room/hidden/cold_storage/search/boo_check/barrel_1
scoreboard players operation #temp Searching = #cold_storage_barrel_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 725 2 -3 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching