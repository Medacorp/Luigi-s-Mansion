execute unless score #kitchen_table Search matches 1 run scoreboard players reset #kitchen_table Searching
scoreboard players reset #kitchen_table Search
execute if score #kitchen_table Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/table
scoreboard players operation #temp Searching = #kitchen_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 705 11 90.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching