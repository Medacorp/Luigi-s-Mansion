execute unless score #gallery_back_room_table_4 Search matches 1 run scoreboard players reset #gallery_back_room_table_4 Searching
scoreboard players reset #gallery_back_room_table_4 Search
execute if score #gallery_back_room_table_4 Searching matches 20 run function luigis_mansion:room/gallery_back_room/search/table_4
scoreboard players operation #temp Searching = #gallery_back_room_table_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738.0 77 -36 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching