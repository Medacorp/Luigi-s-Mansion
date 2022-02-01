execute unless score #cold_storage_junk Search matches 1 run scoreboard players reset #cold_storage_junk Searching
scoreboard players reset #cold_storage_junk Search
execute if score #cold_storage_junk Searching matches 20 run function luigis_mansion:room/normal/cold_storage/search/junk
scoreboard players operation #temp Searching = #cold_storage_junk Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 726 2 7 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching