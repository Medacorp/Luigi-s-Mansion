execute unless score #cold_storage_crate_2 Search matches 1 run scoreboard players reset #cold_storage_crate_2 Searching
scoreboard players reset #cold_storage_crate_2 Search
execute if score #cold_storage_crate_2 Searching matches 20 run function luigis_mansion:room/normal/cold_storage/search/boo_check/crate_2
scoreboard players operation #temp Searching = #cold_storage_crate_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 739.0 2 9.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching