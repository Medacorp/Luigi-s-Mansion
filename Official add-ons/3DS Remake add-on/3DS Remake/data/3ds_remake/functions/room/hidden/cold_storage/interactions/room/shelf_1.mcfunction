execute unless score #cold_storage_shelf_1 Search matches 1 run scoreboard players reset #cold_storage_shelf_1 Searching
scoreboard players reset #cold_storage_shelf_1 Search
execute if score #cold_storage_shelf_1 Searching matches 20 run function 3ds_remake:room/hidden/cold_storage/search/boo_check/shelf_1
scoreboard players operation #temp Searching = #cold_storage_shelf_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 735 4 10 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching