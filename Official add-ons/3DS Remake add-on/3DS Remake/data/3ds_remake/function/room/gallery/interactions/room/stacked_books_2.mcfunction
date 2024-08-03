execute unless score #gallery_stacked_books_2 Search matches 1 run scoreboard players reset #gallery_stacked_books_2 Searching
scoreboard players reset #gallery_stacked_books_2 Search
execute if score #gallery_stacked_books_2 Searching matches 20 run function 3ds_remake:room/gallery/search/stacked_books_2
scoreboard players operation #temp Searching = #gallery_stacked_books_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 775 5 -35 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching