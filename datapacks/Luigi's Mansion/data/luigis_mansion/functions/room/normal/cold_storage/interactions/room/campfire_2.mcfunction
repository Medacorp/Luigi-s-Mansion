execute unless score #cold_storage_campfire_2 Search matches 1 run scoreboard players reset #cold_storage_campfire_2 Searching
scoreboard players reset #cold_storage_campfire_2 Search
execute if score #cold_storage_campfire_2 Searching matches 20 run function luigis_mansion:room/normal/cold_storage/search/campfire_2
scoreboard players operation #temp Searching = #cold_storage_campfire_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 724 2 5 run function luigis_mansion:blocks/search_sound/plant
scoreboard players reset #temp Searching