execute unless score #gallery_stacked_books_1 Search matches 1 run scoreboard players reset #gallery_stacked_books_1 Searching
scoreboard players reset #gallery_stacked_books_1 Search
execute if score #gallery_stacked_books_1 Searching matches 20 run function luigis_mansion_3ds_remake:room/gallery/search/stacked_books_1
scoreboard players operation #temp Searching = #gallery_stacked_books_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 775 2 -24.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching