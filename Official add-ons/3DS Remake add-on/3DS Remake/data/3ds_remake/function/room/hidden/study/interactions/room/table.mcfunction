execute unless score #study_table Search matches 1 run scoreboard players reset #study_table Searching
scoreboard players reset #study_table Search
execute if score #study_table Searching matches 20 run function 3ds_remake:room/hidden/study/search/boo_check/table
scoreboard players operation #temp Searching = #study_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 708.0 20 49.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching