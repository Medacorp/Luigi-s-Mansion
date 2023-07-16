execute unless score #gallery_table_2 Search matches 1 run scoreboard players reset #gallery_table_2 Searching
scoreboard players reset #gallery_table_2 Search
execute if score #gallery_table_2 Searching matches 20 run function luigis_mansion:room/gallery/search/table_2
scoreboard players operation #temp Searching = #gallery_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 729 77 -23.0 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching