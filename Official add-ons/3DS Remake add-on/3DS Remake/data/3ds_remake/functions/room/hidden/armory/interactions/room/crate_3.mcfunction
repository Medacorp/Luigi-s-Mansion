execute unless score #armory_crate_3 Search matches 1 run scoreboard players reset #armory_crate_3 Searching
scoreboard players reset #armory_crate_3 Search
execute if score #armory_crate_3 Searching matches 20 run function 3ds_remake:room/hidden/armory/search/boo_check/crate_3
scoreboard players operation #temp Searching = #armory_crate_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 753.0 29 76.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching