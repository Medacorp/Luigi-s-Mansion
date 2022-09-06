execute unless score #entrance_table Search matches 1 run scoreboard players reset #entrance_table Searching
scoreboard players reset #entrance_table Search
execute if score #entrance_table Searching matches 20 run function luigis_beta_mansion:room/original/entrance/search/table
scoreboard players operation #temp Searching = #entrance_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 11 13 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching