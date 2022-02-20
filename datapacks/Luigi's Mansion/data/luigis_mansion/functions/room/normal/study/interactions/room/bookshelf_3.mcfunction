execute unless score #study_bookshelf_3 Search matches 1 run scoreboard players reset #study_bookshelf_3 Searching
scoreboard players reset #study_bookshelf_3 Search
execute if score #study_bookshelf_3 Searching matches 20 run function luigis_mansion:room/normal/study/search/bookshelf_3
scoreboard players operation #temp Searching = #study_bookshelf_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 702 23 51 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching