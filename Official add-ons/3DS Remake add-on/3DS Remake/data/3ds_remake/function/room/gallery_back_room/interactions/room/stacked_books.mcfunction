execute unless score #gallery_back_room_stacked_books Search matches 1 run scoreboard players reset #gallery_back_room_stacked_books Searching
scoreboard players reset #gallery_back_room_stacked_books Search
execute if score #gallery_back_room_stacked_books Searching matches 20 run function 3ds_remake:room/gallery_back_room/search/stacked_books
scoreboard players operation #temp Searching = #gallery_back_room_stacked_books Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 741 4 -34 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching