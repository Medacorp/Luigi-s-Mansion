execute unless score #study_table_1 Search matches 1 run scoreboard players reset #study_table_1 Searching
scoreboard players reset #study_table_1 Search
execute if score #study_table_1 Searching matches 20 run function luigis_beta_mansion:room/original/study/search/table_1
scoreboard players operation #temp Searching = #study_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 709.0 20 60.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching