execute unless score #armory_crate_1 Search matches 1 run scoreboard players reset #armory_crate_1 Searching
scoreboard players reset #armory_crate_1 Search
execute if score #armory_crate_1 Searching matches 20 run function luigis_mansion:room/normal/armory/search/boo_check/crate_1
scoreboard players operation #temp Searching = #armory_crate_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 749.0 29 76.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching