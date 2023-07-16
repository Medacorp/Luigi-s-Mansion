execute unless score #observatory_table Search matches 1 run scoreboard players reset #observatory_table Searching
scoreboard players reset #observatory_table Search
execute if score #observatory_table Searching matches 20 run function 3ds_remake:room/hidden/observatory/search/table
scoreboard players operation #temp Searching = #observatory_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 641 20 -75.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching