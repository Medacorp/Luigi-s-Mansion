execute unless score #study_table_2 Search matches 1 run scoreboard players reset #study_table_2 Searching
scoreboard players reset #study_table_2 Search
execute if score #study_table_2 Searching matches 20 run function luigis_beta_mansion:room/original/study/search/table_2
scoreboard players operation #temp Searching = #study_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 708.0 20 49.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching