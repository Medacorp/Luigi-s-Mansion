execute unless score #study_bookshelf_6 Search matches 1 run scoreboard players reset #study_bookshelf_6 Searching
scoreboard players reset #study_bookshelf_6 Search
execute if score #study_bookshelf_6 Searching matches 20 run function luigis_mansion:room/normal/study/search/bookshelf_6
scoreboard players operation #temp Searching = #study_bookshelf_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 702 23 44 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching