execute unless score #foyer_table Search matches 1 run scoreboard players reset #foyer_table Searching
scoreboard players reset #foyer_table Search
execute if score #foyer_table Searching matches 20 run function luigis_mansion:room/normal/foyer/search/table
scoreboard players operation #temp Searching = #foyer_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 11 13 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching