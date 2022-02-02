execute unless score #cold_storage_campfire_1 Search matches 1 run scoreboard players reset #cold_storage_campfire_1 Searching
scoreboard players reset #cold_storage_campfire_1 Search
execute if score #cold_storage_campfire_1 Searching matches 20 run function luigis_mansion:room/hidden/cold_storage/search/boo_check/campfire_1
scoreboard players operation #temp Searching = #cold_storage_campfire_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 728 2 6 run function luigis_mansion:blocks/search_sound/plant
scoreboard players reset #temp Searching