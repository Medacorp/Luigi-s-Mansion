execute unless score #gallery_back_room_table Search matches 1 run scoreboard players reset #gallery_back_room_table Searching
scoreboard players reset #gallery_back_room_table Search
execute if score #gallery_back_room_table Searching matches 20 run function 3ds_remake:room/gallery_back_room/search/table
scoreboard players operation #temp Searching = #gallery_back_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 737 2 -34.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching