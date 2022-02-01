execute unless score #armory_crate_9 Search matches 1 run scoreboard players reset #armory_crate_9 Searching
scoreboard players reset #armory_crate_9 Search
execute if score #armory_crate_9 Searching matches 20 run function luigis_mansion:room/normal/armory/search/crate_9
scoreboard players operation #temp Searching = #armory_crate_9 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 754.0 29 74.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching