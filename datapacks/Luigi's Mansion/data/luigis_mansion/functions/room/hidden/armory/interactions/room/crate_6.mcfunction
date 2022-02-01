execute unless score #armory_crate_6 Search matches 1 run scoreboard players reset #armory_crate_6 Searching
scoreboard players reset #armory_crate_6 Search
execute if score #armory_crate_6 Searching matches 20 run function luigis_mansion:room/hidden/armory/search/crate_6
scoreboard players operation #temp Searching = #armory_crate_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 762.0 29 -60.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching