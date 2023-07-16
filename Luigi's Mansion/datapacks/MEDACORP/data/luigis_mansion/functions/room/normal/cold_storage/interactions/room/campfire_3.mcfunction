execute unless score #cold_storage_campfire_3 Search matches 1 run scoreboard players reset #cold_storage_campfire_3 Searching
scoreboard players reset #cold_storage_campfire_3 Search
execute if score #cold_storage_campfire_3 Searching matches 20 run function luigis_mansion:room/normal/cold_storage/search/boo_check/campfire_3
scoreboard players operation #temp Searching = #cold_storage_campfire_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 2 -1 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching