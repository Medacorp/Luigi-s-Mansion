execute unless score #study_book_1 Search matches 1 run scoreboard players reset #study_book_1 Searching
scoreboard players reset #study_book_1 Search
execute if score #study_book_1 Searching matches 20 run function luigis_beta_mansion:room/original/study/search/book_1
scoreboard players operation #temp Searching = #study_book_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 707 21 49 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching